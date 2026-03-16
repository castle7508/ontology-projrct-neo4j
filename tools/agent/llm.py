"""Gemini API 클라이언트 래퍼"""
import time
import logging
from collections.abc import Iterator

from google import genai
from google.genai import types
from pydantic import BaseModel

logger = logging.getLogger(__name__)


class GeminiClient:
    """Gemini API 클라이언트. 텍스트 생성, 스트리밍, 구조화 출력 지원."""

    def __init__(self, api_key: str, model: str = "gemini-2.5-flash"):
        self.client = genai.Client(api_key=api_key)
        self.model = model
        self.total_input_tokens = 0
        self.total_output_tokens = 0

    def _build_contents(self, context: str, user_query: str) -> str:
        """컨텍스트와 사용자 질문을 결합"""
        if context:
            return f"[지식그래프 컨텍스트]\n{context}\n\n[질문]\n{user_query}"
        return user_query

    def generate(self, system_prompt: str, context: str, user_query: str) -> str:
        """텍스트 생성 (동기)"""
        contents = self._build_contents(context, user_query)
        for attempt in range(3):
            try:
                response = self.client.models.generate_content(
                    model=self.model,
                    contents=contents,
                    config=types.GenerateContentConfig(
                        system_instruction=system_prompt,
                    ),
                )
                if response.usage_metadata:
                    self.total_input_tokens += response.usage_metadata.prompt_token_count or 0
                    self.total_output_tokens += response.usage_metadata.candidates_token_count or 0
                return response.text or ""
            except Exception as e:
                if "429" in str(e) and attempt < 2:
                    time.sleep(2 ** attempt)
                    continue
                raise
        return ""

    def generate_stream(self, system_prompt: str, context: str, user_query: str) -> Iterator[str]:
        """스트리밍 텍스트 생성. 각 청크에서 text를 추출하여 yield."""
        contents = self._build_contents(context, user_query)
        try:
            response = self.client.models.generate_content_stream(
                model=self.model,
                contents=contents,
                config=types.GenerateContentConfig(
                    system_instruction=system_prompt,
                ),
            )
            for chunk in response:
                if chunk.text:
                    yield chunk.text
        except Exception as e:
            logger.warning(f"스트리밍 중 에러: {e}")
            yield f"\n\n⚠️ 생성 중 오류 발생: {e}"

    def generate_structured(
        self, system_prompt: str, context: str, user_query: str, response_schema: type[BaseModel]
    ) -> dict:
        """구조화된 JSON 출력. Pydantic 모델을 스키마로 사용."""
        contents = self._build_contents(context, user_query)
        for attempt in range(2):
            try:
                response = self.client.models.generate_content(
                    model=self.model,
                    contents=contents,
                    config=types.GenerateContentConfig(
                        system_instruction=system_prompt,
                        response_mime_type="application/json",
                        response_schema=response_schema,
                    ),
                )
                if response.usage_metadata:
                    self.total_input_tokens += response.usage_metadata.prompt_token_count or 0
                    self.total_output_tokens += response.usage_metadata.candidates_token_count or 0
                import json
                return json.loads(response.text)
            except Exception as e:
                if attempt == 0:
                    logger.warning(f"구조화 출력 실패, 재시도: {e}")
                    continue
                logger.error(f"구조화 출력 최종 실패: {e}")
                return {}
        return {}

    @property
    def token_usage(self) -> dict:
        """누적 토큰 사용량"""
        return {"input": self.total_input_tokens, "output": self.total_output_tokens}

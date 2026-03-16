"""MCP 서버 래퍼 — cwd 문제 우회용"""
import os
import sys

# tools/ 디렉토리로 이동
os.chdir(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from neo4j_mcp.server import mcp

if __name__ == "__main__":
    mcp.run(transport="stdio")

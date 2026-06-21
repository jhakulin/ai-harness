#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: run_youtube_transcription.sh <video-id-or-url>" >&2
  exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
VENV_DIR="${YOUTUBE_TRANSCRIPTION_VENV_DIR:-$HOME/.cache/agents-skills/venvs/youtube-transcription}"
PYTHON_BIN="$VENV_DIR/bin/python"

if [ ! -x "$PYTHON_BIN" ]; then
  python3 -m venv "$VENV_DIR"
  "$PYTHON_BIN" -m pip install -r "$SKILL_DIR/requirements.txt"
fi

exec "$PYTHON_BIN" "$SCRIPT_DIR/youtube_transcription.py" "$1"

#!/usr/bin/env bash
set -e

PORT="${PORT:-8000}"
PACKED_URL="${PACKED:-https://folder.morgen.qzz.io/revcdos.bin}"

echo "============================================="
echo "🎮 GTA Vice City Web / HTML5 HD Edition"
echo "============================================="
echo "Port: $PORT"
echo "Packed Assets: $PACKED_URL"

# Check Python environment
if [ -d ".venv" ]; then
    PYTHON=".venv/bin/python"
elif command -v python3 &> /dev/null; then
    PYTHON="python3"
else
    echo "Error: Python 3 not found."
    exit 1
fi

echo "Starting server on http://localhost:$PORT ..."
exec "$PYTHON" server.py --port "$PORT" --packed "$PACKED_URL" --custom_saves

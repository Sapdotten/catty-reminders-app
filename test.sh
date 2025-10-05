#!/bin/bash

echo "🧪 Running tests..."

python3 -m venv venv
source ./venv/activate/bin
pip install -r ./requirements.txt
pip install playwright
playwright install
pip install pytest
python3 -m pytest

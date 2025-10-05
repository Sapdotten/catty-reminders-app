#!/bin/bash

echo "🧪 Running tests..."

python3 -m venv venv
source ./venv/bin/activate
pip install -r ./requirements.txt
pip install playwright
playwright install
pip install pytest
python3 -m pytest

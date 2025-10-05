#!/bin/bash

echo "🧪 Running tests..."

python3 -m venv venv
source ./venv/activate/bin
pip install -r ./requirements.txt
python3 -m pytest

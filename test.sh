#!/bin/bash

echo "🧪 Running tests..."

source /home/user/devops-demo-website/venv/bin/pip3 install -r ./requirements.txt && /home/user/devops-demo-website/venv/bin/python3 -m pytest
pip install -r ./requirements.txt
python3 -m pytest
        
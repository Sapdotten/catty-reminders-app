#!/bin/bash

echo "🧪 Running tests..."

source /home/user/catty-reminders-app/venv/bin/activate
pip install -r ./requirements.txt
pip install playwright
playwright install
pip install pytest
python3 -m pytest

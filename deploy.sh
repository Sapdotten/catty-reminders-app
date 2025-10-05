#!/bin/bash

echo "🚀 Начинаем развертывание демо-сайта..."

# Создаем директорию для сайта
sudo mkdir -p /home/user/catty-reminders-app

# Копируем файлы
echo "📁 Копируем файлы сайта..."
sudo cp -r ./* /home/user/catty-reminders-app/
source /home/user/catty-reminders-app/venv/bin/activate
pip install -r /home/user/catty-reminders-app/requirements.txt

sudo systemctl restart catty-reminders.service
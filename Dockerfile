FROM python:3.12-slim

# Устанавливаем рабочую директорию
WORKDIR /home/app

# Копируем зависимости
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --upgrade pip && pip install -r requirements.txt

# Копируем проект и скрипт запуска
COPY . .

# Указываем точку входа
ENTRYPOINT ["pytest"]

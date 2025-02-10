FROM python:3.9.13-slim AS base

WORKDIR /app

COPY requirements.txt .

RUN python -m pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]

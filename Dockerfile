FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements-dev-2.txt
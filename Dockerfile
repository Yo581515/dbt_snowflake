FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    libffi-dev \
    libpq-dev \
    gcc \
    curl \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools wheel

COPY . .

RUN pip install -r requirements-dev-2.txt

WORKDIR /app/dbtlearn

CMD ["sh", "-c", "dbt deps && dbt test"]
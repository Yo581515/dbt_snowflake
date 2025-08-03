FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

RUN pip install -r requirements-dev-2.txt

WORKDIR /app/dbtlearn

CMD ["sh", "-c", "dbt deps && dbt test"]
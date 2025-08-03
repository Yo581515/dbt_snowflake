FROM python:3.10-slim

ENV DBT_PROFILES_DIR=/app

WORKDIR /app

COPY . .

RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

WORKDIR /app/dbtlearn

CMD ["sh", "-c", "\
  dbt deps && \
  dbt test && \
  dbt docs generate && \
  dbt docs serve --host 0.0.0.0 --port $PORT \
"]
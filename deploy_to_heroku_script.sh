#!/bin/bash

APP_NAME="yosafe-dbt-snowflake-docs-app"
DOCKERFILE="Dockerfile"

docker build -t web -f $DOCKERFILE .
docker tag web registry.heroku.com/$APP_NAME/web
docker push registry.heroku.com/$APP_NAME/web
heroku container:release web --app $APP_NAME
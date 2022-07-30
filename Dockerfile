FROM python:3.9-slim-buster

RUN apt-get update && apt-get install -y \
  jq  && \
  pip install --upgrade pip \
  # 導入したいパッケージはここでinstallする
  requests \
  boto \
  python-dotenv && \
  echo `python --version`

WORKDIR /app/src

FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash appuser
USER appuser

COPY requirements.txt /app/
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . /app/
FROM python:3.10.9-slim-buster as python-base

WORKDIR /app

ENV POETRY_VERSION=1.3.1

RUN set -ex; pip install --no-cache-dir poetry==$POETRY_VERSION && \
    poetry config virtualenvs.create false

COPY poetry.lock pyproject.toml ./

RUN poetry check
RUN poetry install --no-interaction --no-cache --no-root --without dev
COPY shapes shapes

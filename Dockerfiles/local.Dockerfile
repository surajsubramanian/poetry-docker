FROM python:3.10.9-slim-buster as python-base

WORKDIR /app/shapes

ENV POETRY_VERSION=1.3.1

RUN set -ex; pip install --no-cache-dir poetry==$POETRY_VERSION && \
    poetry config virtualenvs.create false

COPY shapes/pyproject.toml shapes/poetry.lock ./
RUN poetry check
RUN poetry install --no-interaction --no-cache --no-root --without dev
COPY shapes/shapes shapes

WORKDIR /app
COPY service/shapes-service/poetry.lock service/shapes-service/pyproject.toml ./
RUN poetry check
RUN poetry install --no-interaction --no-cache --no-root --without dev
COPY shapes /usr/local/lib/python3.10/site-packages

COPY service/shapes-service/shapes_service shapes_service

EXPOSE 8093
CMD ["poetry", "run", "python", "-m", "shapes_service"]

FROM python:3.9

RUN apt-get update && apt-get install -y \
    zip \
    curl \
    awscli

# poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
ENV PATH=/root/.poetry/bin:$PATH

# docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

# docker-compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose 

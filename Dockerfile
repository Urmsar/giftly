FROM python:3.11

ENV PYTHONUNBUFFERED 1

RUN apt update && \
    apt install -y netcat-traditional && \
    apt clean

WORKDIR /code

COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY . /code/
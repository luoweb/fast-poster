# FROM fastposter/fastposter:latest
FROM python:3.11-slim as builder

# 指定运行时的工作目录
WORKDIR /app

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y python3-pip && rm -rf /var/lib/apt/lists/* && \
    pip3 install  --no-cache-dir pip --upgrade


RUN  pip3 install  --no-cache-dir -r requirements.txt

# COPY ./server/static/ /app/
COPY ./server/ /app/

CMD ["python","fast.py"]

# docker build -t "luoweb/poster-agent:20231009" .
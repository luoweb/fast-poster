FROM fastposter/fastposter:latest

COPY ./server/static/ /app/static/


# docker build -t "luoweb/poster-agent:20231009" .
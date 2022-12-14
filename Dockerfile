FROM jonasal/nginx-certbot:latest as dev

RUN mkdir -p /var/cache/nginx

RUN rm -rf /var/cache/nginx/*

RUN mkdir -p /usr/share/nginx/html/

# COPY ./app/client /usr/share/nginx/html/client

COPY config/ /etc/nginx/conf.d/

WORKDIR /usr/share/nginx/html/

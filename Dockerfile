FROM jonasal/nginx-certbot:latest as dev

RUN mkdir -p /var/cache/nginx

RUN rm -rf /var/cache/nginx/*

# RUN mkdir -p /usr/share/nginx/html/poker

# COPY ./web-mobile /usr/share/nginx/html/poker

COPY config/ /etc/nginx/conf.d/

WORKDIR /usr/share/nginx/html/

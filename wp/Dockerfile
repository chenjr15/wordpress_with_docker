FROM php:fpm-alpine
RUN apk update&& apk add nginx  && \
    rm -f /etc/nginx/conf.d/default.conf && ln -s /nginx.conf /etc/nginx/conf.d/default.conf&&\
    mkdir /run/nginx && \
    docker-php-ext-install mysqli
COPY . /
WORKDIR /wordpress
EXPOSE 80
CMD ["/entry.sh"]

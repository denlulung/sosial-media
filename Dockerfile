FROM alpine:latest
RUN \
    apk add --no-cache \
    apache2 \
    php7 \
    php7-apache2 \
    php7-mbstring \
    php7-mysqli \
    php7-pdo_mysql \
    git

WORKDIR /var/www/localhost/htdocs/

RUN git clone -b master https://github.com/denlulung/sosial-media.git
RUN mv /var/www/localhost/htdocs/sosial-media/* /var/www/localhost/htdocs/
RUN rm -rf index.html /var/www/localhost/htdocs/sosial-media

COPY config.php /var/www/localhost/htdocs/config.php

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    apache2 \
    systemd \
    php php-mysql php-gd php-cli php-common \
    mariadb-server

RUN service mariadb restart

RUN systemd-escape enable mariadb-server apache2 php7.2-fpm

COPY setup-databases.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/setup-databases.sh

COPY GTH /var/www/html/

EXPOSE 80

ENTRYPOINT [ "/docker-entrypoint-initdb.d/setup-databases.sh" ]
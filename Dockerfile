FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2

COPY ./var/www/html/ /var/www/html/

ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

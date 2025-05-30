FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2
COPY index.html /var/www/html/
COPY img /var/www/html/img
CMD ["apachectl", "-D", "FOREGROUND"]

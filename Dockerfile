FROM ubuntu:latest

RUN apt-get update && \
apt-get install -y apache2 php git
RUN rm -rf /var/www/html/*

EXPOSE 80

RUN git clone https://github.com/aeimskei/basic-php-website /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]

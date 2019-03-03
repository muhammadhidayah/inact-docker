FROM ubuntu:18.04

MAINTAINER Muhammad Hidayah <hidayah@inarts.co.id>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install apt-utils software-properties-common && add-apt-repository ppa:ondrej/php

RUN apt-get update && apt-get -y install apache2 php5.6 php5.6-bcmath php5.6-bz2 php5.6-curl \
php5.6-gd php5.6-gmp php5.6-json php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-xml php5.6-xmlrpc php5.6-xsl php5.6-zip

RUN apt-get autoclean && apt-get -y autoremove

VOLUME ["/var/www", "/var/www/html", "/var/log"]

EXPOSE 80 443

CMD ["apachectl", "-DFOREGROUND"]

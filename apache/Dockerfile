FROM ubuntu:latest
MAINTAINER Gaëtan

RUN apt-get update

# Install Apache
RUN apt-get install -y apache2

RUN export LANG=C.UTF-8 && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:nginx/stable && \
    LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y && \
    apt-get update

# Install PHP
RUN apt-get install -y php5.6 php5.6-cli php5.6-readline php5.6-intl php5.6-cli php5.6-json php5.6-mongo php5.6-mysql php5.6-curl php5.6-dev php5.6-xdebug

RUN a2enmod php5.6
RUN a2enmod rewrite

# Apache configuration
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    sed -i "s/variables_order.*/variables_order = \"EGPCS\"/g" /etc/php/5.6/apache2/php.ini && \
    sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf

# Add image configuration and scripts
ADD apache.sh /apache.sh
RUN chmod 755 /*.sh

EXPOSE 80

CMD ["/apache.sh"]

FROM php:8-apache
RUN a2enmod rewrite
COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2ensite 000-default
COPY ./src/ /var/www/html/
EXPOSE 80
EXPOSE 443
CMD ["apache2-foreground"]

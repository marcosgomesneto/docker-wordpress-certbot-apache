FROM wordpress:latest

COPY default-ssl.conf /etc/apache2/sites-available/
COPY 000-default.conf /etc/apache2/sites-available/

RUN mkdir -p /etc/letsencrypt/live && \
    a2enmod ssl && \
    a2ensite default-ssl.conf

FROM httpd:latest
ARG BUILD_TAG

LABEL version=${BUILD_TAG}

COPY ./1/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./2/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]

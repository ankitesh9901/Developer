FROM centos:7
MAINTAINER ankitesh@gmail.com
RUN yum install -y httpd \
        zip \
        unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/selo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip selo.zip
RUN cp -rvf selo-html/* .
RUN rm -rf selo-html selo.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


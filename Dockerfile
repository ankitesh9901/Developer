FROM centos:7
MAINTAINER ankitesh@gmail.com
RUN yum install -y httpd \
        zip \
        unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/koppee.zip /var/www/html
WORKDIR /var/www/html
RUN unzip koppee.zip
RUN cp -rvf coffee-shop-html-template/* .
RUN rm -rf coffee-shop-html-template koppee.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


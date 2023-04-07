FROM centos:latest
RUN yum install httpd zip unzip -y 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip /var/www/html
WORKDIR /var/www/html
RUN unzip https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip 
RUN rm -rf brighton.zip
RUN cp -rf brighton/* .
RUN rm -rf brighton
EXPOSE 80 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

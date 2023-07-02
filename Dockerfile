FROM ubuntu:latest

LABEL "project"="assignment"
LABEL "author"="Charan"

RUN apt update
RUN apt install apache2 -y

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

WORKDIR /var/www/html
VOLUME /var/log/apache2

ADD assignment.tar.gz /var/www/html
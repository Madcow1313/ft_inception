FROM debian:buster

RUN apt update

RUN apt install -y mariadb-server

EXPOSE 3306

#COPY ./conf/mariadb.cnf /etc/mysql/mariadb.cnf
COPY ./tools/start.sql /var/www/mariadbtools/start.sql

#start mariadb
RUN systemctl start mariadb; systemctl enable mariadb

#check status
RUN systemctl status mariadb

RUN mysql < /var/www/mariadbtools/start.sql

RUN mysql SHOW DATABASES; exit;

#can it be run?
CMD mysqld_safe

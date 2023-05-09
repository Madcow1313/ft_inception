FROM debian:buster

RUN apt-get update

RUN apt-get install -y mariadb-server mariadb-client

EXPOSE 3306

#RUN mkdir -p /var/run/mysqld && chmod 777 /var/run/mysqld

#COPY ./tools/start.sql /var/www/mariadbtools/start.sql

#RUN chmod +x /var/www/mariadbtools/start.sql

#RUN mysqld < /var/www/mariadbtools/start.sql

#RUN mysqld SHOW DATABASES; exit;

CMD ["mysqld_safe"]

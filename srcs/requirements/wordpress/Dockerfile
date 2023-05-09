FROM debian:buster

RUN apt update

RUN apt install -y php php-mysqli php-fpm wget

EXPOSE 9000

WORKDIR /var/www

RUN wget https://wordpress.org/latest.tar.gz; tar -xzvf latest.tar.gz;

COPY edit_cofing.sh* /usr/local/bin/

ENTRYPOINT [ "bash", "/usr/local/bin/edit_cofing.sh" ]

#run php-fpm and ignore daemonizing
CMD ["php-fpm", "-F"]
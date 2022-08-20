#system image
FROM debian:buster

#installing nginx
RUN apt update
RUN apt install -y nginx
RUN nginx -t

#installing openssl
RUN apt install -y openssl

#setting up port
EXPOSE 443

#create ssl key and sert
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj '/CN=localhost'

RUN nginx

RUN nginx -t
#system image
FROM debian:buster

#installing nginx
RUN apt update
RUN apt install -y nginx

#-t checks conf file and don't start nginx
RUN nginx -t && echo "nginx check!\n"

#installing openssl
RUN apt install -y openssl

#setting up port
EXPOSE 443

#copy conf file to container
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

#create ssl key and sert
RUN openssl req -x509 -nodes -days 365 -sha256  -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj '/CN=RU/ST=Kazan/L=Kazan/O=42'

#run nginx, -c to specify config
CMD [ "nginx"; "-g"; "'daemon off'"; "-c"; "etc/nginx/nginx.conf" ]
all: dc-create-nginx

#nginx
dc-create-nginx:
	docker build ./srcs/requirements/nginx/ -t nginx:nginx
	docker create --name nginx nginx

#dc-create-mariadb:
	#docker build ./srcs/requirements/mariadb/ -t mariadb:mariadb
	#docker create --name mariadb mariadb



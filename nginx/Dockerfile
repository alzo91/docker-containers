FROM nginx:latest

LABEL name="Alisson Lucas Zotarelli de Olivera"

RUN apt-get update -y && apt-get install vim curl wget -y && apt-get install iputils-ping -y 

COPY /conf.d /etc/nginx/conf.d
 
EXPOSE 80
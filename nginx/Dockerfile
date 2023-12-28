FROM nginx:latest

RUN apt-get update
RUN apt-get install vim -y

COPY html/ /usr/share/nginx/html

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx","-g","daemon off;"]
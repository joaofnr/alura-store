FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html/
COPY assets /var/www/html/assets/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
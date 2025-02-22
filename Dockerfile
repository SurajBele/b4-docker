FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install apache2 -y
COPY ./index.html /usr/share/nginx/html/index.html
CMD [ "apache2ctl", "-DFOREGROUND" ]
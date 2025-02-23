FROM ubuntu:20.04
RUN apt-get update
RUN apt install apache2-utils –y 
RUN apt-get install apache2 -y
RUN apt clean
COPY ./index.html /usr/share/nginx/html/index.html
CMD [ "apache2ctl", "-DFOREGROUND" ]
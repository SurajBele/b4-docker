FROM centos:9
RUN yum install java -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz /
RUN tar -xvf ./apache-tomcat-9.0.100 -C /opt
WORKDIR /opt/apache-tomcat-9.0.100/
CMD [" /opt/apache-tomcat-9.0.100/bin/catalina.sh","run"]
EXPOSE 8080
FROM centos:7

MAINTAINER mausam.ojha@tothenew.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.11/bin/apache-tomcat-9.0.11.tar.gz
#COPY ./root/apache-tomcat-9.0.11.tar.gz .
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-*/* /opt/tomcat/.
RUN yum install -y java-1.8.0-openjdk
RUN java -version

WORKDIR /opt/tomcat/webapps
ADD booking-service.war /opt/tomcat/webapps/booking-service.war


EXPOSE 8080

CMD ["sh","/opt/tomcat/bin/catalina.sh", "run"]


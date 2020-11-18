FROM centos:7

MAINTAINER mausam.ojha@tothenew.com

RUN mkdir /opt/countries/
RUN rm -rf /opt/countries/RUNNING_PID

#WORKDIR /opt/countries
#RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.11/bin/apache-tomcat-9.0.11.tar.gz
#COPY ./root/apache-tomcat-9.0.11.tar.gz .
#RUN tar xvfz apache*.tar.gz
#RUN mv apache-tomcat-*/* /opt/tomcat/.
RUN yum install -y java-1.8.0-openjdk
RUN java -version

ADD countries-assembly-1.1.1.jar /opt/countries/countries-assembly-1.1.1.jar
WORKDIR /opt/countries


#EXPOSE 8080

#CMD ["java","/opt/tomcat/bin/catalina.sh", "run"]

CMD java -Xmx1024m  -jar countries-assembly-1.1.1.jar


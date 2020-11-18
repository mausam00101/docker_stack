FROM centos:7

MAINTAINER mausam.ojha@tothenew.com

RUN mkdir /opt/airport/
RUN rm -rf /opt/airport/RUNNING_PID
#RUN [ -f /opt/airport/RUNNING_PID ] ; then "File exist" || echo "File does not exist"

#WORKDIR /opt/airport
#RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.11/bin/apache-tomcat-9.0.11.tar.gz
#COPY ./root/apache-tomcat-9.0.11.tar.gz .
#RUN tar xvfz apache*.tar.gz
#RUN mv apache-tomcat-*/* /opt/tomcat/.
RUN yum install -y java-1.8.0-openjdk
RUN java -version

ADD airports-assembly-1.0.1.jar /opt/airport/airports-assembly-1.0.1.jar
WORKDIR /opt/airport


#EXPOSE 8080

#CMD ["java","/opt/tomcat/bin/catalina.sh", "run"]

CMD java -Xmx1024m  -jar airports-assembly-1.0.1.jar


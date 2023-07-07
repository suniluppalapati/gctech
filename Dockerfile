FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN dnf install yum
RUN yum install docker -y 

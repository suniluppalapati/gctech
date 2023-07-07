FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN apt-get update
RUn apt-get install vim -y
EXPOSE 8080

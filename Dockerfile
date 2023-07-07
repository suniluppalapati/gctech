FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN apt-get update
RUn apt-get install vim -y
RUN cd conf
RUN vi tomcat-users.xml
RUN <user username="likith" password="likith" roles="manager-gui,manager-script"/>

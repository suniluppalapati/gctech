FROM tomcat
COPY target/*.war likith:/usr/local/tomcat/webapps/ROOT.war

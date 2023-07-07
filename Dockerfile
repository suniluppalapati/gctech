FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN docker run -d --name likith likithbabu/jai

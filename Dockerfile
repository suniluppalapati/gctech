FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN docker run -v /var/run/docker.sock:/var/run/docker.sock -ti docker

FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN docker cp target/*.war jai:/usr/local/tomcat/webapps/ROOT.war 

FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh
RUN yum -y install mkpasswd && yum -y clean all  && rm -rf /var/cache
RUN yum install systemd -y
RUN systemctl start docker
RUN docker run -d --name likith likithbabu/jai

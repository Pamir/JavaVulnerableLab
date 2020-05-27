FROM apsl/tomcat6
MAINTAINER ilker

ADD JavaVulnerableLab.war /opt/tomcat/webapps

CMD ["catalina.sh", "run"]

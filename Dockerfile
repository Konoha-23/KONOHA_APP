FROM tomcat:latest
### Good stuff
COPY target/*.war /usr/local/tomcat/webapps/

#COPY target/*.war /usr/local/tomcat/webapps/tesla.war

#if prefix isn't taken out use target/*.war

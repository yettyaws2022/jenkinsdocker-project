# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "rajusw804@gmail.com" 
COPY /var/lib/tomcat/java-tomcat-maven-example.war /usr/local/tomcat/webapps

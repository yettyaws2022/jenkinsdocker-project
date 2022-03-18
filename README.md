# maven-project

Simple Maven Project

ansible-playbook copywarfile.yml

 docker rm project -f
 
 docker rmi project:1.0.0
 
docker build -t project:1.0.0 .

docker run -d --name project -p 8091:8080 project:1.0.0


---------------------------

# tomcatTomcat 7.0.57, 8080, "admin/admin" 


sudo chmod 666 /var/run/docker.sock
-----------------------------------------

Tomcat installatin :
sudo yum install tomcat tomcat-webapps tomcat-admin-webapps tomcat-docs-webapp tomcat-javadoc -y

# java-tomcat-maven-example Prerequisites:
https://github.com/rajulucky812/java-tomcat-nexus-maven-example


sudo chmod 666 /var/run/docker.sock
docker rm project -f
docker rmi project:1.0.0
docker build -t project:1.0.0 .
docker run -d --name project -p 8091:8080 project:1.0.0
docker commit project rajusw804/jenkins:$version
docker login --username ${dockerhubusername} --password ${dockerhubpassword}
docker push rajusw804/jenkins:$version

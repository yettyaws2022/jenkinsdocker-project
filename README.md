Hi Welcome to jenkins:

![image](https://user-images.githubusercontent.com/97225776/159006964-5c6d8ecb-2621-4fb5-9b03-3d5fc59ffef6.png)


Plugin:
maven integration plugin

------------------------
Prerequisite sw:
Maven
java
docker
git

------------------
sudo amazon-linux-extras install java-openjdk11

sudo yum update -y

sudo amazon-linux-extras install epel

sudo yum install docker -y

sudo systemctl start docker 

sudo systemctl enable docker

sudo yum install epel-release telnet bind-utils nano git -y

sudo yum -y install wget net-tools python3 daemonize sudo amazon-linux-extras install java-openjdk11



--------------------------

# install jenkins

    1  sudo amazon-linux-extras install java-openjdk11
    
    2  java -version
    
    3  sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
    
    4  cat /etc/yum.repos.d/jenkins.repo 
    
    5  sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
    
    7  sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
    
    8  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key 
    
   10  yum clean packages
   
   12  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
   
   13  sudo yum install jenkins
-------------------------------------

# tomcatTomcat 7.0.57, 8091, "admin/admin" 

-----------------------------------------

mvn clean package

sudo chmod 666 /var/run/docker.sock

docker rm project -f

docker rmi project:1.0.0

docker build -t project:1.0.0 .

docker run -d --name project -p 8091:8080 project:1.0.0

docker commit project rajusw804/tomcat:$version

docker login --username ${dockerhubusername} --password ${dockerhubpassword}

docker push rajusw804/tomcat:$version

http://13.234.217.75:8080/github-webhook/

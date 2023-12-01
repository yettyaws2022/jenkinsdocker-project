Jenkins installation:

sudo amazon-linux-extras install java-openjdk11
yum install java-11-amazon-corretto-devel

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

sudo rpm — import https://pkg.jenkins.io/redhat/jenkins.io.key


sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key


sudo yum install jenkins -y

sudo service jenkins start

   
   13  sudo yum install jenkins
-------------------------------------

# tomcatTomcat 7.0.57, 8091, "admin/admin" 

-----------------------------------------
build steps:

mvn clean package

sudo chmod 666 /var/run/docker.sock

# docker rm project -f

#  docker rmi project:1.0.0

docker build -t project:1.0.0 .

docker run -d --name project -p 8091:8080 project:1.0.0

docker commit project rajusw804/tomcat:$version

docker login --username ${dockerhubusername} --password ${dockerhubpassword}

docker push rajusw804/tomcat:$version

http://13.234.217.75:8080/github-webhook/

Hi Welcome to jenkins:

![image](https://user-images.githubusercontent.com/97225776/159006964-5c6d8ecb-2621-4fb5-9b03-3d5fc59ffef6.png)

![image](https://user-images.githubusercontent.com/97225776/159699729-ba5ad72d-1b82-4885-b78e-6474efa81ca7.png)


Plugin:
maven integration plugin

------------------------
Prerequisite sw:
Maven
java
docker
git

------------------

sudo yum update -y

sudo amazon-linux-extras install epel

sudo yum install epel-release telnet bind-utils nano git -y

sudo yum -y install wget net-tools python3 daemonize java-1.8.0-openjdk

--------------------------

# install jenkins

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y install jenkins -y

echo "--------Jenkins,Java installed"

sudo systemctl enable jenkins

sudo systemctl start jenkins

-------------------------------------

# tomcatTomcat 7.0.57, 8080, "admin/admin" 

-----------------------------------------

clean package

sudo chmod 666 /var/run/docker.sock

docker rm project -f

docker rmi project:1.0.0

docker build -t project:1.0.0 .

docker run -d --name project -p 8091:8080 project:1.0.0

docker commit project rajusw804/jenkins:$version

docker login --username ${dockerhubusername} --password ${dockerhubpassword}

docker push rajusw804/jenkins:$version

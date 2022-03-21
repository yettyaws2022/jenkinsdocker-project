![image](https://user-images.githubusercontent.com/97225776/159006964-5c6d8ecb-2621-4fb5-9b03-3d5fc59ffef6.png)

Plugin:
maven integration plugin

--------------------------
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
sudo chmod 666 /var/run/docker.sock

docker rm project -f

docker rmi project:1.0.0

docker build -t project:1.0.0 .

docker run -d --name project -p 8091:8080 project:1.0.0

docker commit project rajusw804/jenkins:$version

docker login --username ${dockerhubusername} --password ${dockerhubpassword}

docker push rajusw804/jenkins:$version


# install nexus

sudo yum -y install wget net-tools python3 daemonize java-1.8.0-openjdk

yum install -y maven git 

mkdir /opt/nexus && cd /opt/nexus

cd /opt/nexus

wget http://www.sonatype.org/downloads/nexus-latest-bundle.tar.gz

tar -xzvf nexus-latest-bundle.tar.gz && version=$(ls | grep -v latest | grep 'nexus-' | cut -f'2,3' -d'-') && ln -s nexus-$version nexus

cp /opt/nexus/nexus/bin/nexus /etc/init.d/

sed -i.bak -e 's/NEXUS_HOME=\"..\"/NEXUS_HOME=\"\/opt\/nexus\/nexus\"/' /etc/init.d/nexus

sed -i.bak -e 's|nexus-webapp-context-path=/nexus|nexus-webapp-context-path=/|' /opt/nexus/nexus/conf/nexus.properties

useradd nexus

chown -R nexus:nexus /opt/nexus/ && sudo chown nexus:nexus /etc/init.d/nexus

sed -i.bak -e 's/#RUN_AS_USER=/RUN_AS_USER=nexus/' /etc/init.d/nexus

systemctl stop firewalld && sudo systemctl disable firewalld

echo 'RUN_AS_USER=nexus' >> /etc/environment && export RUN_AS_USER=nexus

systemctl daemon-reload

/etc/init.d/nexus start && chkconfig nexus on

## Login to http://serverIP:8081

## Login: admin , Password: admin123

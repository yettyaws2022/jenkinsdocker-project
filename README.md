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

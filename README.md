# maven-project

Simple Maven Project
ansible-playbook copywarfile.yml
 docker rm project -f
 docker rmi project:1.0.0
docker build -t project:1.0.0 .
docker run -d --name project -p 8090:8080 project:1.0.0

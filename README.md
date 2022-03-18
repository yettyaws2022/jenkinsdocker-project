![image](https://user-images.githubusercontent.com/97225776/159006964-5c6d8ecb-2621-4fb5-9b03-3d5fc59ffef6.png)

--------------------------

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

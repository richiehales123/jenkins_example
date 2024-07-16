## Create docker container for sonarqube
See `sonaerqube_setup_docker.md`


## Tutorial
https://www.youtube.com/watch?v=KsTMy0920go

### Token
squ_3a9c5c3fa48a374803c36a30d709dbdf1d84caab

### Setup network in docker for containers to communicate
See docker_network_setup.md

### Create docker container from jenkins buildah image
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins:1.0


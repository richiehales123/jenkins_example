# Tutorial
## Install -1
### Install jenkins in docker container and start
https://www.youtube.com/watch?v=pMO26j2OUME&t=1s

### Install / Run Jenkins
#### Setups Jenkins Ports and creates a volume
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkings_home jenkins/jenkins

## Run jenkins logs with image id
docker logs 2454b8cbad37

## Get password from logs
ee54b3f185b34684bd65cc6cfd1e8bd4

## Goto - in browser
http://localhost:8080/login?from=%2F
& paste password in

Usrename = richie
Password = c0ntr0l"
Full Name = Richie Hales
Email Address = richiehales@outlook.com


## Setup pipeline - 2
### Basic example of pipeline setup - clone from github
https://www.youtube.com/watch?v=EQfzQ0kYI84&t=24s


### Setup network in docker for containers to communicate
See docker_network_setup.md



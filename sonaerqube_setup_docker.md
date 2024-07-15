## Sonarqube setup
### Install
`docker pull sonarqube:latest`

### Start docker conatainer
`docker run -d --name sonarqubeDev -p 9000:9000 -p 9092:9092 sonarqube:latest`


### Sonarqube initial login
username = admin
password = admin

### Sonarqube updated login
username = admin
password = c0ntr0l"

### Setup network in docker for containers to communicate
See docker_network_setup.md

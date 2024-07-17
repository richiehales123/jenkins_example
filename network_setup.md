## To create network for containers in docker
docker network create jenkinsNet
docker network connect jenkinsNet <container name for jenkins>
docker network connect jenkinsNet <container name for sonarqube>
docker network connect jenkinsNet <container name for nexus>

### Check status - find IP addresses
docker inspect jenkinsNet

### Change settings from localhost to ip addresses in Jenkins

### Containers should have ip addresses
1. sonarqubeDev - .2
2. jenkins      - .3
3. nexus        - .4

## To create network for containers in docker
docker network create jenkinsNet
docker network connect jenkinsNet <container name for jenkins>
docker network connect jenkinsNet <container name for sonarqube>

### Check status - find IP addresses
docker inspect jenkinsNet

### Change settings from localhost to ip addresses

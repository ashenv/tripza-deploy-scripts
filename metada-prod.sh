#!/bin/bash 
docker pull tripzalk/tripza-meta-service:latest 
docker stop meta-service 
docker system prune -f 
docker run -d --name=meta-service --network=tripza_dockr -e "SPRING_PROFILES_ACTIVE=prod" tripzalk/tripza-meta-service:latest
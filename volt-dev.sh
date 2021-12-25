#!/bin/bash 
docker pull tripzalk/tripza-file-service:latest 
docker stop file-service 
docker system prune -f 
docker run -d --name=file-service --network=tripza_dockr -e "SPRING_PROFILES_ACTIVE=dev" tripzalk/tripza-file-service:latest
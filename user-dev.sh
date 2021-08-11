#!/bin/bash 
docker pull tripzalk/tripza-user-service:latest 
docker stop user-service 
docker system prune -f 
docker run -d --name=user-service --network=tripza_dockr -e "SPRING_PROFILES_ACTIVE=dev" tripzalk/tripza-user-service:latest
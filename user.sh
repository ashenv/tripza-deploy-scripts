#!/bin/bash 
docker pull tripzalk/tripza-user-service:latest 
docker stop user-service 
docker system prune -f 
docker run -d --name=user-service --netowrk=tripza_default tripzalk/tripza-user-service:latest
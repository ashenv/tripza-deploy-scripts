#!/bin/bash 
docker pull tripzalk/tripza-listing-service:latest 
docker stop listing-service 
docker system prune -f 
docker run -d --name=listing-service --netowrk=tripza_default tripzalk/tripza-listing-service:latest
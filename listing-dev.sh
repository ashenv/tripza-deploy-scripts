#!/bin/bash 
docker pull tripzalk/tripza-listing-service:latest 
docker stop listing-service 
docker system prune -f 
docker run -d --name=listing-service --network=tripza_dockr --env-file ./.env tripzalk/tripza-listing-service:latest

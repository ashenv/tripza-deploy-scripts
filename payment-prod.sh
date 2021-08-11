#!/bin/bash 
docker pull tripzalk/tripza-payment-service:latest 
docker stop payment-service 
docker system prune -f 
docker run -d --name=payment-service --network=tripza_dockr -e "SPRING_PROFILES_ACTIVE=prod" tripzalk/tripza-payment-service:latest
#!/bin/bash 
docker pull tripzalk/tripza-payment-service:latest 
docker stop payment-service 
docker system prune -f 
docker run -d --name=payment-service --netowrk=tripza_default tripzalk/tripza-payment-service:latest
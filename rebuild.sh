#!/bin/bash
git pull
docker-compose down --rmi all -v
docker-compose up -d
sleep 25
docker exec -it splunkenterprise "chown -R splunk:splunk /tomcat-container/"

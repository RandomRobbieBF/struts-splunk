#!/bin/bash
git pull
docker-compose down --rmi all -v
docker-compose up -d
sleep 35
docker exec splunkenterprise bash -c "chown -R splunk:splunk /tomcat-container/"

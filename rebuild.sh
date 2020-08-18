#!/bin/bash
git pull
docker-compose down --rmi all -v
docker-compose up -d
sleep 25
docker exec splunkenterprise bash -c "chown -R splunk:splunk /tomcat-container/

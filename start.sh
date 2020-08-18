#!/bin/bash
docker-compose up -d
sleep 25
docker exec -it splunk "chown -R splunk:splunk /tomcat-container"

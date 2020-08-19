#!/bin/bash
git pull
docker-compose down -v
docker images purge -a
docker-compose up -d
#sleep 35
#docker exec splunkenterprise bash -c "chown -R splunk:splunk /tomcat-container/ && rm /usr/local/tomcat/webapps/ROOT/index.html"

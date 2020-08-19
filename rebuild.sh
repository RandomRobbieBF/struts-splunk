#!/bin/bash
git pull
docker-compose down -v
docker-compose up -d
docker exec splunkenterprise bash -c "chown -R splunk:splunk /tomcat-container/"
docker exec struts bash -c "rm -rf /usr/local/tomcat/webapps/ROOT/index.html"

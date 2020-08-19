#!/bin/bash
git pull
docker-compose down -v
docker system prune -a
docker-compose up -d
docker exec splunkenterprise bash -c "chown -R splunk:splunk /tomcat-container/"

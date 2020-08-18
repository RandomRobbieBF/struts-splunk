#!/bin/bash
chown -R splunk:splunk /tomcat-container
exec "$@"

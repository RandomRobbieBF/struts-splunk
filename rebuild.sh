#!/bin/bash
git pull
docker-compose down --rmi -v
docker-compose up -d

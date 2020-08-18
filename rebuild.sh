#!/bin/bash
git pull
docker-compose down --rmi
docker-compose up -d

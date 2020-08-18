#!/bin/bash
git pull
docker-compose down --rmi all -v
docker-compose up -d

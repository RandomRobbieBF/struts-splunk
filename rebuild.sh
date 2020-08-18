#!/bin/bash
git pull
docker-compose down -r-mi
docker-compose up -d

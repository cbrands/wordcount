#!/usr/bin/env bash

echo "-- Stopping all containers"
docker kill $(docker ps -q)

echo "-- Removing old images"
docker system prune -f

#Only first time TODO fix this
#echo "- start new project"
#docker-compose run web django-admin.py startproject composeexample . &&

echo "-- Start docker"
docker-compose up
#!/bin/bash
cd ~/my-app-example

echo '[1/5] Pulling changes from git'
git pull origin main

echo '[2/5] Shutting down container'
docker-compose down

echo '[3/5] Building image'
docker-compose build

echo '[4/5] Starting container'
docker-compose up -d --remove-orphans

echo '[5/5] Cleaning unused/dangling images'
docker image prune -a -f

echo 'Done!'

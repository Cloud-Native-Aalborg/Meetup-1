#!/usr/bin/env bash

cd wisdom-service || exit
sudo docker build . -t mejlholm/wisdom-service:latest
sudo docker push mejlholm/wisdom-service:latest
cd .. || exit

cd wisdom-frontend || exit
sudo docker build . -t mejlholm/wisdom-frontend:latest
sudo docker push mejlholm/wisdom-frontend:latest
cd .. || exit




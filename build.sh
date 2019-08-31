#!/usr/bin/env bash

set -e

cd wisdom-service || exit
sudo docker build . -t mejlholm/wisdom-service:1.0-SNAPSHOT
sudo docker push mejlholm/wisdom-service:1.0-SNAPSHOT
cd .. || exit

cd wisdom-frontend || exit
sudo docker build . -t mejlholm/wisdom-frontend:1.0-SNAPSHOT
sudo docker push mejlholm/wisdom-frontend:1.0-SNAPSHOT
cd .. || exit




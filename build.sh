#!/usr/bin/env bash

set -e

version=$(git rev-parse HEAD)

for application in "wisdom-frontend" "wisdom-service"
do
  cd ${application} || exit
  sudo docker build . -t mejlholm/${application}:"${version}"
  sudo docker push mejlholm/${application}:"${version}"

  sed -i -E "s,image: mejlholm/$application:(.*)$,image: mejlholm/$application:$version,g" deploy/${application}-deployment.yaml
  git add deploy/${application}-deployment.yaml
  git commit -m "build"

  git push origin master
  cd .. || exit
done


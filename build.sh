#!/bin/bash

set -e

#fixme, figure out how to provide github credentials
version=$(git rev-parse HEAD)

for application in "wisdom-frontend" "wisdom-service"
do
  cd ${application} || exit

  #replace version in deployment.yaml
  sed -i -E "s,image: mejlholm/$application:(.*)$,image: mejlholm/$application:$version,g" deploy/${application}-deployment.yaml

  #add, commit and push to github
  git add deploy/${application}-deployment.yaml
  git commit -m "Drone bumped image tags automatically"
  git push origin master

  cd .. || exit
done


#!/bin/sh -l

sh -c "echo DOCKER BUILD AND PUSH"

docker build . -t phil21/java-hello-world

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

docker push phil21/java-hello-world:latest

#!/bin/bash

DOCKER_DIR="dockerfile"

cd $DOCKER_DIR
docker build -t ubuntu/14.04:aosp .

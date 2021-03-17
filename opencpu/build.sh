#!/bin/bash

DOCKER_DIR="dockerfile"

cd $DOCKER_DIR
docker build -t ubuntu/16.04:opencpu .

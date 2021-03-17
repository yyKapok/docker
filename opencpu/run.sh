#!/bin/bash

WORKDIR="/home/channing/workspace"
IMAGE="ubuntu/16.04:opencpu"

docker run -it --rm \
	--name opencpu \
	--hostname OpenCPU \
	-v $WORKDIR:$WORKDIR \
	-w $WORKDIR \
	-e USER=channing \
	$IMAGE

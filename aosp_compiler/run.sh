#!/bin/bash

WORKDIR="/home/channing/workspace"
IMAGE="ubuntu/14.04:aosp"

docker run -it --rm \
	--name cross_builder \
	--hostname AOSPCompiler \
	-v $WORKDIR:$WORKDIR \
	-w $WORKDIR \
	-e USER=channing \
	$IMAGE

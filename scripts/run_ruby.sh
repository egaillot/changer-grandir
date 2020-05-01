#!/bin/bash -e

IMAGE_NAME=changer-grandir
PORT=${PORT:-1917}

docker build -t ${IMAGE_NAME} .
docker run -it --rm -v "$PWD":/usr/src/app -p ${PORT}:4000 ${IMAGE_NAME} ${@}

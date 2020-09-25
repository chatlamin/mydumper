#!/bin/bash

#Настройки
source  ../settings.sh

docker stop $CONTAINER_NAME
docker rm -f $CONTAINER_NAME
docker rmi $IMAGE_AMD64
docker rmi $IMAGE_REPOSITORY_OLD
docker rmi $IMAGE_AMD64_MASTER
docker volume ls -qf dangling=true | xargs -r docker volume rm
./build-$ARCH_AMD64.sh
#!/bin/bash

#Настройки
source  ../settings.sh

docker stop $CONTAINER_NAME
docker rm -f $CONTAINER_NAME
docker rmi $IMAGE_ARMHF
docker rmi $IMAGE_REPOSITORY_OLD
docker rmi $IMAGE_ARMHF_MASTER
docker volume ls -qf dangling=true | xargs -r docker volume rm
./build-$ARCH_ARMHF.sh
#!/bin/bash
#Настройки
source ../settings.sh

#latest
docker build \
    --build-arg ARCH_ARMHF \
    --tag $IMAGE_ARMHF_MASTER \
    --file ../Dockerfile.armhf .

#new version
docker build \
    --build-arg ARCH_ARMHF \
    --tag $IMAGE_ARMHF \
    --file ../Dockerfile.armhf .

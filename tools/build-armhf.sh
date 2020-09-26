#!/bin/bash
#Настройки
source ../settings.sh

#stable
docker build \
    --build-arg ARCH_ARMHF \
    --tag $IMAGE_STABLE \
    --file ../Dockerfile .
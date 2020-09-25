#!/bin/bash
#Настройки
source ../settings.sh

#latest
docker build \
    --build-arg ARCH_AMD64 \
    --tag $IMAGE_AMD64_MASTER \
    --file ../Dockerfile .

#new version
docker build \
    --build-arg ARCH_AMD64 \
    --tag $IMAGE_AMD64 \
    --file ../Dockerfile .
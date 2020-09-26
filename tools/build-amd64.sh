#!/bin/bash
#Настройки
source ../settings.sh

#stable
docker build \
    --build-arg ARCH_AMD64 \
    --tag $IMAGE_STABLE \
    --file ../Dockerfile .

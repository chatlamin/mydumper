#!/bin/bash
#Настройки
source ../settings.sh

#master
docker manifest create \
    $REPOSITORY:$TAG_MASTER \
    --amend $IMAGE_AMD64_MASTER \
    --amend $IMAGE_ARMHF_MASTER

#new version
docker manifest create \
    $REPOSITORY:$TAG_NEW \
    --amend $IMAGE_AMD64 \
    --amend $IMAGE_ARMHF

#master
docker manifest push $REPOSITORY:$TAG_MASTER

#new version
docker manifest push $REPOSITORY:$TAG_NEW
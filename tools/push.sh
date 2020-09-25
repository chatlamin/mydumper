#!/bin/bash
#Настройки
source ../settings.sh

docker push $IMAGE_AMD64
docker push $IMAGE_ARMHF
docker push $IMAGE_AMD64_MASTER
docker push $IMAGE_ARMHF_MASTER

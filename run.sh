#!/bin/bash

#---------------------------------------------------------------------
# Settings
#---------------------------------------------------------------------

#Основные настройки
source settings.sh

#--------------------------------------------------------------------
#End settings
#--------------------------------------------------------------------

docker run --rm \
    --volume $CONTAINER_NAME:/backup \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    $IMAGE_REPOSITORY_NEW \
    mydumper \
    --help
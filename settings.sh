#!/bin/bash

#---------------------------------------------------------------------
# Settings
#---------------------------------------------------------------------

#Название проекта
#https://github.com/chatlamin/mydumper
NAME=mydumper
#Репозиторий
#https://hub.docker.com/r/chatlamin/mydumper/tags
REPOSITORY=chatlamin/$NAME
#Архитектура armhf
ARCH_ARMHF=armhf
#Архитектура amd64
ARCH_AMD64=amd64
#Тэг образа старый
TAG_OLD=latest
#Тэг образа новый
TAG_NEW=1.0
#Тэг мастер образа
TAG_MASTER=latest


#Образ итоговый armhf
IMAGE_ARMHF=chatlamin/$NAME-$ARCH_ARMHF:$TAG_NEW
#Образ итоговый amd64
IMAGE_AMD64=chatlamin/$NAME-$ARCH_AMD64:$TAG_NEW
#Образ мастер armhf
IMAGE_ARMHF_MASTER=chatlamin/$NAME-$ARCH_ARMHF:$TAG_MASTER
#Образ мастер amd64
IMAGE_AMD64_MASTER=chatlamin/$NAME-$ARCH_AMD64:$TAG_MASTER
#Образ репозитория старый
IMAGE_REPOSITORY_OLD=$REPOSITORY:$TAG_OLD
#Образ репозитория новый
export IMAGE_REPOSITORY_NEW=$REPOSITORY:$TAG_NEW
#Имя контейнера
CONTAINER_NAME=$NAME

#--------------------------------------------------------------------
#End settings
#--------------------------------------------------------------------

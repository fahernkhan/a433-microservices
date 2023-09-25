#!/bin/bash

# Mengatur environment variable untuk password Docker Hub
export PASSWORD_DOCKER_HUB=bobotoh93

# Perintah untuk login ke Docker Hub dengan menggunakan environment variable
echo $PASSWORD_DOCKER_HUB | docker login -u fahernkhan --password-stdin


# Perintah untuk membuat Docker image dari Dockerfile dengan nama image item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages jika digunakan)
docker tag item-app:v1 fahernkhan/repository:item-app-v1

# Login ke Docker Hub (atau GitHub Packages jika digunakan)
docker login -u fahernkhan -p bobotoh93

# Mengunggah image ke Docker Hub (atau GitHub Packages jika digunakan)
docker push fahernkhan/repository:item-app-v1

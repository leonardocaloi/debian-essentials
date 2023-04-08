#!/bin/bash

apt-get update && apt-get upgrade -y

apt-get install -y nftables
apt-get install -y openssh-client

# Instala o Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Adiciona o usuário atual ao grupo docker
sudo usermod -aG docker $(whoami)

# Instala o Docker Compose
sudo apt-get update
sudo apt-get install -y docker-compose

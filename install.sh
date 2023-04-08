#!/bin/bash

source .env

docker-compose down
docker-compose build
docker-compose up -d

docker exec -it -u $USERNAME debian bash -c "cd ~ && /tmp/essentials/oh_my_zsh.sh"

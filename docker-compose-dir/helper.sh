#!/bin/bash

docker-compose --file docker-compose-dir/docker-compose.yml  down
sudo rm -rf data db

cp docker-compose-dir/tmp_compose/docker-compose${1}.yml docker-compose-dir/docker-compose.yml

docker-compose --file docker-compose-dir/docker-compose.yml  up -d


#!/bin/bash
# helper to automate the docker compose process a bit better

cd docker-compose-dir

# bring down the containers and delete the temporary config
docker-compose down
sudo rm -rf data/ 
rm -rf db/


# modify the config

# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localCert.key -out localCert.crt
#chmod 644 CertFiles/localCert.crt 
#chmod 600 CertFiles/localCert.crt

pwd
cp $PWD/gitea.app.ini.tpl  $PWD/data/gitea/conf/app.ini

# bring up the container 

cp tmp_compose/docker-compose${1}.yml docker-compose.yml

docker-compose up -d


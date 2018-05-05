#!/bin/bash
# ./packerRoll.sh
# this shell script is executed on the CI docker machine -> build packer image

# get apt update and apt dependencies
apt update -y &> /dev/null 
apt install -y curl unzip tree  &> /dev/null

# get packer binary and make it callable
cd /usr/bin
curl https://releases.hashicorp.com/packer/1.2.2/packer_1.2.2_linux_amd64.zip -O
unzip packer*.zip
chmod +x packer; 
cd ~
echo "Packer version :"; packer version

echo "DRONE WORKSPACE="; echo $DRONE_WORKSPACE

#bash $DRONE_WORKSPACE/packerRoll.sh
cd $DRONE_WORKSPACE

# Choose PACKER TARGET
source ./config
if [PACKER_TARGET -eq "docker" ] ; packer build ./packerFiles/packerfile_docker.json ; fi
if [PACKER_TARGET -eq "openstack" ] ; packer build ./packerFiles/packerfile_openstack.json ; fi
if [PACKER_TARGET -eq "ami" ] ; packer build ./packerFiles/packerfile_ami.json ; fi

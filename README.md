# drone-packer-helper

Repo for combining drone and packer to build up quickly packer images.

There is a docker compose file to setup everything quickly in docker. It is supposed to be executed all on localhost. Because the DRONE docker "slaves" need dns resolving as well, either a docker dns or service discovery is needed, or the docker build machines need kind of environment flags to reach them. The problem is actually that the docker build machines (plugins/git:latest) are started in the default networks, other than the drone server is configured in. And the further problem is that in the gitea ini for instance you need to add the own IP address or hostname. But the IP address is not known, when defined in bridge mode, or is it ?
Another problem is: even if the different docker services can reach eacch other, with their service name: if you have just called drone with localhost in the browser, then you cant login with the gitea credentials anymore. Thats why you need definitely dns-service for the docker services.

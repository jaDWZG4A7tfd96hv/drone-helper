How To setup the environment with docker
------------------------------------------

- adapt docker compose file:
-- set all usernames and secrets for testing purposes to : gitea
# since the proper configuration is not clean yet, and I find it quite hard to understand from the docs
-- adding more accurate username/passwords : Use the same secret value in both the drone server and drone agent SECRETS in the docker-compose.yml 
-- from drone.docs::gitea.plugin
Authentication -> Drone will prompt you for a username and password to authenticate. You should use your Gitea username and password. This is unfortunately required due to Gitea lack of oauth2 support.
-- adapt the IP addresses for the various instances

- bring up the docker compose file : 
  docker-compose --file docker-compose.yml up -d

- gitea setup on localhost:3000  (or assigned IP) for gitea admin account settings and general db stuff. 
-- the admin settings are at the bottom.
-- dont forget to change the ROOT_URL/Domain (and probably also application URL) setting if you assigned another IP than localhost


- after finishing or changing config
  * bring down the stack: docker-compose --file docker-compose.yml  down
  * delete the database and prior config : rm -rf ./docker-compose-dir/db && rm -rf ./docker-compose-dir/data

- add the repository to gitea
  
  * name the repo itself gitea and create within gitea a repo also called gitea.
  * if already a git remote address included in .git/config : cp repo to another place and delete these remote url config lines
  * git remote add origin http://localhost:3000/gitea/gitea.git # use gitea as username and password here
  * git push -u origin master

- change the webhook URL : HTTP://localhost:8000/... -> HTTP://DRONE_SERVER_IP:8000/...

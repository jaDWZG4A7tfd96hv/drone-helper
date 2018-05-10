- with ubuntu 18.04: docker fails to run manually when using 0.8.x for drone server and agent. Then there are log lines: with PATH not findable for "docker exec -it CONTAINER sh"
  =>  If it is used 0.8-alpine for both, then it works without issue. Is it possible that this issue was worked around when adding user to the docker group?

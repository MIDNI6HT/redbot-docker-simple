# redbot-docker-simple
Simple docker image to help easily setup and run Redbot discord bot on a docker container without too much fuss.

# Building
`docker build -t redbot-docker-simple .`

# Running
`docker run -d -e TOKEN="# YOUR TOKEN HERE#" -e PREFIX="!" -v /path/to/data:/root/redenv/instances --name=redbot-docker-simple redbot-docker-simple`

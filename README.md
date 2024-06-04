# Simple Redbot Docker
Simple docker image to help easily setup and run Redbot discord bot on a docker container without too much fuss. This is just something I did for fun and to test how to make a docker image, if you want a much more serious docker image for redbot check out this one: https://github.com/PhasecoreX/docker-red-discordbot

# Building
`docker build -t redbot-docker-simple .`

# Running
`docker run -d -e TOKEN="# YOUR TOKEN HERE#" -e PREFIX="!" -v /path/to/data:/root/redenv/instances --name=redbot-docker-simple redbot-docker-simple`

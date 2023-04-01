#!bin/sh

# This a script to quickly start up the Model Builder application

cd ~/gitRepos/powerview-dvh-to-nodeset2/
docker-compose -f docker-compose.prod.named-volume.yml up

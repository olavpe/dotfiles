#!bin/sh

# This a script to start the twin in a terminal window
# in order to quicker get the digital twin service up and running

cd ~/gitRepos/perception-mapper
conda deactivate
source ./venv/bin/activate
dapr run --app-id perception-mapper --app-port 3000 -- uvicorn --port 3000 mapper.core.main:app

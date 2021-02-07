#!bin/sh

# This a script to start the twin in a terminal window
# in order to quicker get the digital twin service up and running

cd ~/gitRepos/perception-common-library/
conda deactivate
source ./venv/bin/activate
# dapr run --app-id perception-twin-app --dapr-http-port 3500 --app-port 3001 -- uvicorn --port 3001 twin_service.twin_service:app

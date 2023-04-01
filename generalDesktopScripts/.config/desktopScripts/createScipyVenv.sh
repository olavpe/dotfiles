#!bin/sh

# This a script to quickly install the various Python packages
# which typically need to be installed for Numpy and Scipy to
# get it working

conda deactivate
python3 -m venv venv
source ./venv/bin/activate
pip install cython pybind11 pythran numpy
OPENBLAS=$(brew --prefix openblas) CFLAGS="-falign-functions=8 ${CFLAGS}" pip install --no-use-pep517 scipy
python -m pip config --site set global.extra-index-url https://PythonFeed:ngdtzvrrbiy25wau7cof6by7kof43j3rp36wozyihylsqj2j3vwq@pkgs.dev.azure.com/PrediktorDevOps/Development/_packaging/PythonFeed/pypi/simple/
pip install -r requirements.txt

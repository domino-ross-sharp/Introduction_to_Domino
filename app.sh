#!/usr/bin/env bash

# This is a bash script for Domino's App publishing feature
# You can publish an app by clicking on "Publish" and selecting "App" in your
# quick-start project.

# # Python/Flask example
# export LC_ALL=C.UTF-8
# export LANG=C.UTF-8
# export FLASK_APP=app-flask.py
# pip install -r requirements_apps.txt --user
# python -m flask run --host=0.0.0.0 --port=8888

# # Dash example
# pip install -r requirements_apps.txt --user
# python app-dash.py

# R/Shiny example

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$BRANCH" != "$CURRENT_BRANCH" ]
then
  git checkout $BRANCH
fi
R -e 'shiny::runApp("./", port=8888, host="0.0.0.0")'

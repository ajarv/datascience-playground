#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server

mkdir -p /srv/shiny-server/apps
chown -R shiny:shiny /srv/shiny-server

chown shiny:shiny /home/shiny/.Rprofile

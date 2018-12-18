#!/bin/bash

# Kickoff the CrafterCMS Startup Script and Tail Logs

#CRAFTER_BIN_DIR=/crafter/usr/src/crafter/bin

cd /opt/crafter/bin && ./startup.sh && \
sleep 10 # give Crafter Authoring Environment time to create the newest log
exec tail -f /opt/crafter/logs/tomcat/catalina.out

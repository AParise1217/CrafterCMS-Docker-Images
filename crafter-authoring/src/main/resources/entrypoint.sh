#!/bin/sh

CRAFTER_DIR=/${docker.user}/usr/src/crafter

# Kickoff the CrafterCMS Startup Script and Tail Logs

cd ${CRAFTER_DIR}/bin && ./startup.sh && \
sleep 10 # give Crafter Authoring Environment time to create the newest log
exec tail -f ${CRAFTER_DIR}/logs/tomcat/catalina.out

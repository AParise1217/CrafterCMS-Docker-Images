#!/bin/bash

CRAFTER_DIR=/${docker.user}/usr/src/crafter

# Kickoff the CrafterCMS Startup Script and Tail Logs

cd /${docker.user}/usr/src/crafter/bin && startup.sh && \
sleep 10 # give Crafter Delivery Environment time to create the newest log
exec tail -f ${CRAFTER_DIR}/logs/tomcat/catalina.out

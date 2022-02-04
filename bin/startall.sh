#!/bin/bash
clear
echo --------------------------------------------------------------------------------
echo Starting Dropwizard enabled CEDAR microservices
echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

startServerAndBg() {
    echo Starting $1
    logd=${CEDAR_HOME}/log/cedar-${1}-server
    ${CEDAR_SOURCE}/cedar-dev-root/bin/start-dw-server.sh ${1} \
        > ${logd}/cedar-${1}-server.log 2>&1 &
    echo $! > ${logd}/pid
    sleep 10
}

startServerAndBg group
startServerAndBg messaging
startServerAndBg repo
startServerAndBg resource
startServerAndBg schema
startServerAndBg artifact
startServerAndBg terminology
startServerAndBg user
startServerAndBg valuerecommender
startServerAndBg submission
startServerAndBg worker
startServerAndBg  openview
startServerAndBg internals
startServerAndBg impex

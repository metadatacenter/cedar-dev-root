#!/bin/bash

waitForConnection() {
    echo Waiting for connection...
    echo ContainerId: mongo
    mkdir --parents /sleep
    while [ -e /sleep ]
    do
	sleep 5
    done
}


cmd="mongod --storageEngine $MONGO_STORAGE_ENGINE --dbpath $MONGO_DB_PATH"
if [ ${MONGO_AUTH} == "true" ]
then
    cmd="$cmd --auth"
fi
if [ ${MONGO_JOURNALING} == "true" ]
then
    cmd="$cmd --logpath ${MONGO_LOG_PATH}/mongo.log"
fi
cmd="$cmd --bind_ip_all"
$cmd

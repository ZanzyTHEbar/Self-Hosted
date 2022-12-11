#!/bin/bash

# checkif first argument is empty
if [ -z "$1" ]
then
    echo "No nextcloud container name supplied, please supply a container name"
    exit 1
fi

docker exec -it $1 updater.phar
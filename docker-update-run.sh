#!/bin/sh

help () {
    echo "Usage: ${0} <image> <port>"
}

if [ -z "$1" ]
  then
    echo "Missing <image> argument. Please see help."
    help
    exit;
fi


if [ -z "$2" ]
  then
    echo "Missing <port> argument. Please see help."
    help
    exit;
fi

docker stop $1
docker rmi $1 -f
docker run -d -p $3 --name $1 $1
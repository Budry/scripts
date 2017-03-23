#!/bin/sh

help () {
    echo "Usage: ${0} <registry> <image> <port>"
}

if [ -z "$1" ]
  then
    echo "Missing <registry> argument. Please see help."
    help
    exit;
fi


if [ -z "$2" ]
  then
    echo "Missing <image> argument. Please see help."
    help
    exit;
fi

if [ -z "$3" ]
  then
    echo "Missing <port> argument. Please see help."
    help
    exit;
fi

docker stop $2
docker rmi $2 -f
docker run -d -p $3 --name $2 $1/$2
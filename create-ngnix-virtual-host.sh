#!/usr/bin/env sh

help () {
    echo "Usage: ${0} <domain> <port>"
}

if [ -z "$1" ]
  then
    echo "Missing <domain> argument. Please see help."
    help
    exit;
fi

if [ -z "$2" ]
  then
    echo "Missing <port> argument. Please see help."
    help
    exit;
fi


BASEDIR=$(dirname $0)

cp ${BASEDIR}/templates/virtual-host.conf /etc/nginx/sites-available/${1}

sed -i "s/%domain%/${1}/g" /etc/nginx/sites-available/${1}
sed -i "s/%port%/${2}/g" /etc/nginx/sites-available/${1}
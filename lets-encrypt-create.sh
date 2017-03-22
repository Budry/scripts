#!/usr/bin/env sh

help() {
    echo "Usage: ${0} -d <domain>[ -d <domain> ...]"
}
if [ -z "$1" ]
  then
    echo "Missing <domains> argument. Please see help"
    help
    exit;
fi

certbot certonly --webroot -w /var/www/well-known "${@}"
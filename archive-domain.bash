#!/bin/bash
RSYNC=/usr/bin/rsync
EXPECTED_ARGS=1
E_BADARGS=65
DOMAIN=$1

if [ $# -ne $EXPECTED_ARGS ]
then
	echo "You need to provide a domain to download. No need to add protocol. Like this: example.com"
	exit $E_BADARGS
fi

wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains ${DOMAIN} --no-parent ${DOMAIN}
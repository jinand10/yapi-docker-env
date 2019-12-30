#!/bin/sh
#set -eo pipefail

if [ ! -e "init.lock" ]
then
	node /api/vendors/server/install.js
fi

node /api/vendors/server/app.js

#exec "$@"
#!/bin/sh

if [ -z "$KDB" ]; then
	KDB=kdb
fi

cp --no-clobber ${CMAKE_INSTALL_PREFIX}/${install_directory}/application-config.json.tpl ${CMAKE_INSTALL_PREFIX}/${install_directory}/application-config.json
"$KDB" mount ${CMAKE_INSTALL_PREFIX}/${install_directory}/application-config.json system:${config_root}${config_default_profile} yajl

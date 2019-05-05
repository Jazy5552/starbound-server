#!/bin/bash
if [ ! -f "/steamcmd/starbound-server/storage/starbound_server.config" ]
then
  echo "Copying default config"
  mkdir -p /steamcmd/starbound-server/storage/
  cp -f /starbound_server.config.default /steamcmd/starbound-server/storage/starbound_server.config
fi

cd /steamcmd/starbound-server/linux/
./starbound_server


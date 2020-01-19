#!/bin/bash

if [ ! -f "/steamcmd/starbound-server/linux/starbound_server" ]
then
  echo "Waiting for starbound to be installed..."
fi

while [ ! -f "/steamcmd/starbound-server/linux/starbound_server" ]
do
  sleep 5
done

if [ ! -f "/steamcmd/starbound-server/storage/starbound_server.config" ]
then
  echo "Copying default config"
  mkdir -p /steamcmd/starbound-server/storage/
  cp -f /starbound_server.config.default /steamcmd/starbound-server/storage/starbound_server.config
fi

echo "Starting the starbound server"

cd /steamcmd/starbound-server/linux/
./starbound_server


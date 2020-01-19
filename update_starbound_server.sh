#!/bin/bash
# Update/Install the starbound server
# WILL PROMPT FOR CREDS
echo "Enter your steam username"
read STEAM_USERNAME
echo "Enter your steam password"
read -s STEAM_PASSWORD

cd /root
/steamcmd/steamcmd.sh \
  +login $STEAM_USERNAME $STEAM_PASSWORD \
  +force_install_dir /steamcmd/starbound-server/ \
  +app_update 211820 validate \
  +quit

#!/bin/bash

# WARNING WILL PROMPT FOR STEAMGUARD
/steamcmd/steamcmd.sh \
  +login $STEAM_USERNAME $STEAM_PASSWORD \
  +force_install_dir /steamcmd/starbound-server/ \
  +app_update 211820 validate \
  +quit

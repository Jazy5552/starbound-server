FROM jazy5552/steamcmd
MAINTAINER Jazy <jazy@jazyserver.com>

# Set ENV through a .env file/compose file
ENV STEAM_USERNAME=""
ENV STEAM_PASSWORD=""

RUN set -x \
  && apt-get update \
  && apt-get install -y --no-install-recommends --no-install-suggests \
    libvorbisfile3 \
  && rm -rf /var/lib/apt/lists/*

COPY update_starbound_server.sh /
COPY start_starbound_server.sh /
COPY starbound_server.config.default /

RUN mkdir -p /steamcmd/starbound-server

VOLUME /steamcmd
EXPOSE 21025

# Assumes that starbound was installed
# Otherwise run /update_starbound_server.sh manually
CMD /start_starbound_server.sh

WORKDIR /steamcmd/starbound-server/

FROM boxboat/config-merge:latest as config-merge
USER root
RUN apk add wget curl lz4 nano jq
RUN wget -O /usr/local/bin/dasel https://github.com/TomWright/dasel/releases/download/v1.26.0/dasel_linux_amd64
RUN chmod +x /usr/local/bin/dasel
WORKDIR /root
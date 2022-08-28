FROM boxboat/config-merge:latest as config-merge
USER root
RUN apk add wget curl lz4 nano jq
RUN if [ "$(uname -m)" = "aarch64" ]; then \
      ARCH=arm64; \
    else ; \
      ARCH=amd64; \
    fi; \
    wget -O /usr/local/bin/dasel https://github.com/TomWright/dasel/releases/download/v1.26.0/dasel_linux_$ARCH
RUN chmod +x /usr/local/bin/dasel
WORKDIR /root

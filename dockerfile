FROM node:current-alpine3.14

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig libc6-compat \
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
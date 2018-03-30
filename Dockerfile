FROM node:9.10-alpine
ARG NODE_ENV=development
ENV NODE_ENV $NODE_ENV

# The SUID flag on binaries has a vulnerability where intruders have a vector for assuming root access to the host
RUN for i in `find / -path /proc -prune -o -perm /6000 -type f`; do chmod a-s $i; done
RUN adduser -D -s /usr/local/bin/node phaser && mkdir /phaser && chown -R phaser /phaser
USER phaser
WORKDIR /phaser

COPY package.json .
COPY package-lock.json .
RUN npm i --no-optional

VOLUME [ "/phaser/src" ]
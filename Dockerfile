FROM chrisdlangton/docker-phaser:3.3
LABEL author="github.com/chrisdlangton"

COPY package.json .
COPY package-lock.json .
RUN npm i
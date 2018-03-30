phaser() {
  docker run \
  -v /e/phaser3-sandpit/.bash_history_docker:/home/phaser/.bash_history \
  -v /e/phaser3-sandpit/src:/phaser/src \
  -v /e/phaser3-sandpit/package.json:/phaser/package.json \
  -it chrisdlangton/phaser3-sandpit $@
}

build() {
  NODE_ENV=$1
  if [ -z $NODE_ENV ]; then
    NODE_ENV=development
  fi
  docker build . \
  --build-arg NODE_ENV=$NODE_ENV \
  --compress \
  --force-rm \
  --rm \
  -t chrisdlangton/phaser3-sandpit
}

push() {
  VERSION=$1
  if [ -z $VERSION ]; then
    VERSION=latest
  fi
  # docker rmi chrisdlangton/docker-phaser:3.3.0
  # docker build . -t chrisdlangton/docker-phaser:3.3
  # docker tag chrisdlangton/docker-phaser chrisdlangton/docker-phaser:3.3
  # docker push chrisdlangton/docker-phaser
}


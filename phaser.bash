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
  --force-rm \
  -t chrisdlangton/phaser3-sandpit
}
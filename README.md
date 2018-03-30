# Install

Install docekr and obtaint he nodejs runtime;

```bash
docker pull node:9.10
```

Build image

```bash
docker build . -t chrisdlangton/phaser3-sandpit
```

Access a shell in docker

```bash
docker run -it chrisdlangton/phaser3-sandpit /bin/sh
```

Helper functions for phaser docker

```bash
source phaser.bash
```

Run phaser helper (drops to nodejs shell in docker)

```bash
build; phaser
```

Build for prod

```bash
build production
```

Run a shell in docker

```bash
phaser sh
```

Run the project

```bash
phaser npm run
```

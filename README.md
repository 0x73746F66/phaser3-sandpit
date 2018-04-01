# Install

Install docekr and obtaint he nodejs runtime;

Build image

```bash
docker build . -t chrisdlangton/phaser3-sandpit
```

Access a shell in docker

```bash
docker run -it chrisdlangton/phaser3-sandpit /bin/bash
```

Helper functions for phaser docker

```bash
source phaser.bash
```

Run phaser helper (drops to nodejs shell in docker)

```bash
phaser-build; phaser-start
```

Build for prod

```bash
phaser-build production
```

Run a shell in docker

```bash
phaser-exec bash
```

Run the project

```bash
phaser-exec npm run build
```

visit [http://localhost:3000/](http://localhost:3000/)
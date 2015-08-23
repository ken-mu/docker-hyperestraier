# Introduction

Dockerfile to build [Hyper Estraier](http://fallabs.com/hyperestraier/) container image.

## Version

Current Vereion: **0.0.1**

# Installation

Pull Dockerfile source from GitHub.

```bash
git clone https://github.com/k-muramatsu/docker-hyperestraier
```

Build Dockerfile to make image.

```bash
cd path/to/Dockerfile
docker build -t hyperestraier:latest .
```

# Quick Start

Step 1. Make volume directory.

```bash
mkdir -p /opt/docker/hyperestraier/src
```

Step 2. Set estcmd bash file to update index periodically.

```bash
cat /opt/docker/hyperestraier/src/hyperestraier.cron <<EOF
estcmd ~~~
EOF
```

Step 3. Launch the Hyper Estraier container

```bash
docker run --name=hyperestraier -d -v /opt/hyperestraier/data:/home/hyperestraier/data -e "INTERVAL_MIN=1" -v /opt/hyperestraier:/home/hyperestraier hyperestraier
```

# Configuration

# Available Configuration Parameters

- **INTERVAL_MIN**: Bash execution interval[minnute]. 

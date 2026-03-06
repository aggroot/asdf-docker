# asdf-docker

[asdf](https://asdf-vm.com) plugin for the [Docker](https://www.docker.com/) CLI client.

Installs the `docker` CLI binary from Docker's official static binaries. This does **not** install the Docker daemon — only the client for communicating with a remote or existing Docker host.

## Requirements

- [asdf](https://asdf-vm.com) v0.14+
- `curl`
- `tar`

## Install

```bash
asdf plugin add docker https://github.com/aggroot/asdf-docker.git
```

## Usage

```bash
# List all available versions
asdf list all docker

# Install a specific version
asdf install docker 27.5.1

# Set version globally
asdf set --home docker 27.5.1

# Set version locally (in current directory)
asdf set docker 27.5.1
```

## Supported platforms

| OS    | Architectures          |
|-------|------------------------|
| Linux | x86_64, aarch64, armhf |
| macOS | x86_64, aarch64        |

## What gets installed

- `docker` — the Docker CLI client
- `docker-compose` — if bundled in the release (newer versions)

## License

MIT

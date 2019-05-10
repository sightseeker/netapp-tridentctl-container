NetApp Trident Command-Line Utility (`tridentctl`) for Docker
===
`tridentctl` command for any platform with Docker.

## Overview

`tridentctl` was not running on macOS, Windows and other than Linux.
However Docker is running on any platform.
So, `tridentctl` running on Docker to workalound to this issue.

## Usage of `tridentctl for docker`

```
# Show tridentctl version
docker run -it --rm -v ${KUBECONFIG}:/root/.kube sightseeker/tridentctl} version

# Show usage of tridentctl (help)
docker run -it --rm -v ${KUBECONFIG}:/root/.kube sightseeker/tridentctl} --help

# Show backends
docker run -it --rm -v ${KUBECONFIG}:/root/.kube sightseeker/tridentctl get backend
```

## Alias config to your machine.

Alias config to your `.bash_profile` for `tridentctl for docker` use without docker-cli use.

```
alias tridentctl="docker run -it --rm -v ${HOME}/.kube:/root/.kube sightseeker/tridentctl"

# reload bash_profile
source ~/.bash_profile

# tridentctl for docker without docker-cli use.
tridentctl version
```


## Build this Docker Image

```
docker-compose build
```

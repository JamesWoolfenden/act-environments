# Overview
This repo contains Packer scripts to create docker images necessary to run GitHub actions locally with [nektos/act](https://github.com/nektos/act).  The source for these scripts originally came from [actions/virtual-environments](https://github.com/actions/virtual-environments).

# Building Images
Run:

```shell
packer build images/linux/ubuntu1804.json
```

Reads The environmental variable GITHUB_TOKEN.

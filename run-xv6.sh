#!/usr/bin/env bash

export RDIR=/home/user/xv6
docker run --rm -v $(realpath .):$RDIR -w $RDIR -it $(docker build -q .) make qemu "$@"

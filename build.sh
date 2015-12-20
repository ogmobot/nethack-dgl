#!/bin/bash

docker build -t test1 $PWD
docker run -t -i --rm \
 --volume="$PWD/src:/src" \
 --volume="$PWD/build/root:/root" \
 -p 23:23 \
 test1

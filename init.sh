#!/bin/bash

if [ -n "$KEY" ]; then
    mkdir ~/.ssh
    echo "$KEY" > ~/.ssh/id_rsa
    chmod 400 ~/.ssh/id_rsa
    ssh-keyscan github.com >> ~/.ssh/known_hosts
fi

git clone $REPOSITORY
cd *

/usr/bin/entrypoint.sh --bind-addr 0.0.0.0:8080 --auth none .

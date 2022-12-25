#!/bin/bash

START_DIR="${START_DIR:-/home/coder/project}"
mkdir -p $START_DIR
git clone $GIT_REPO $START_DIR
/usr/bin/entrypoint.sh --bind-addr 0.0.0.0:8080 $START_DIR

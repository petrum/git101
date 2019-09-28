#!/bin/bash

GIT_BARE_DIR=~/tmp/repo.git

rm -fr $GIT_BARE_DIR
mkdir -p $GIT_BARE_DIR
#ls -ltr $GIT_BARE_DIR

cd $GIT_BARE_DIR
git init --bare
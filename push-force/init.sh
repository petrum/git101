#!/bin/bash

GIT_BARE_DIR=~/tmp/repo.git

ssh nuc rm -fr $GIT_BARE_DIR
ssh nuc mkdir -p $GIT_BARE_DIR
#ls -ltr $GIT_BARE_DIR

ssh nuc "cd $GIT_BARE_DIR; git init --bare"

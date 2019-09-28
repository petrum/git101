#!/bin/bash

ROOT_DIR=~/tmp/git101
set -e
cd
function createRemoteRepo {
    SERVER=$1
    GIT_BARE_DIR=$2
    ssh nuc rm -fr $GIT_BARE_DIR
    ssh nuc mkdir -p $GIT_BARE_DIR
    ssh nuc "cd $GIT_BARE_DIR; git init --bare"
}

function cloneRepo {
    REMOTE_NAME=$1
    LOCAL_NAME=$2
    mkdir -p $ROOT_DIR
    cd $ROOT_DIR
    rm -fr $LOCAL_NAME
    git clone ssh://petrum@nuc/home/petrum/tmp/$REMOTE_NAME $LOCAL_NAME
    cd $LOCAL_NAME
}

function switchTo {
    cd $ROOT_DIR/$1
}

createRemoteRepo nuc ~/tmp/repo.git
cloneRepo repo.git client1
touch README
git add .
git commit -am'Added a README file'
git push
cloneRepo repo.git client2

echo DONE init

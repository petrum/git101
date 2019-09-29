#!/bin/bash

ROOT_DIR=~/tmp/git101
set -e
cd
function createRemoteRepo {
    GIT_BARE_DIR=$ROOT_DIR/$1
    mkdir -p $GIT_BARE_DIR
    cd $GIT_BARE_DIR
    git init --bare
}

function cloneRepo {
    REMOTE_NAME=$ROOT_DIR/$1
    LOCAL_NAME=$ROOT_DIR/$2
    git clone $REMOTE_NAME $LOCAL_NAME
    cd $LOCAL_NAME
}

function switchTo {
    cd $ROOT_DIR/$1
}

function commitNewFile {
    FILE=$1
    touch $FILE
    git add $FILE
    git commit -am"Added the '$FILE' file"    
}
rm -fr $ROOT_DIR
mkdir -p $ROOT_DIR
createRemoteRepo server.git
cloneRepo server.git client1
touch README
git add .
git commit -am'Added a README file'
git push
cloneRepo server.git client2
echo DONE init

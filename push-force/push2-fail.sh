#!/bin/bash
. ./init.sh

# https://spin.atomicobject.com/2018/12/17/alternative-git-push-force/

switchTo client1
commitNewFile work1
git push

switchTo client2
git pull
commitNewFile work2
git push

switchTo client1
git push

switchTo client2
git pull --no-edit
ls -ltr

echo DONE

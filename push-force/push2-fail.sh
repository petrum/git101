#!/bin/bash
. ./init.sh

switchTo client1
touch work1
git add .
git commit -am'Added a work1 file'
git push

switchTo client2
git pull
touch work2
git add .
git commit -am'Added a work2 file'
git push

switchTo client1
git reset --hard HEAD@{1}
git commit -am'Removed the pusblished work1 file'
git pull
git push

echo DONE

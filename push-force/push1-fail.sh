#!/bin/bash
. ./init.sh

switchTo client2
touch work2
git add .
git commit -am'Added a work2 file'
git push
switchTo client1
touch work1
git add .
git commit -am'Added a work1 file'
git push
echo DONE

#!/bin/bash
. ./init.sh

switchTo client1
commitNewFile work1
git push

switchTo client2
git pull
commitNewFile work2
git push

switchTo client1
#git reset --hard HEAD@{1}
git reset --hard HEAD~1
#git push # this fails
git push -f
ls -ltr

switchTo client2
commitNewFile work2-2
git pull
git push
ls -ltr
echo DONE

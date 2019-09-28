#!/bin/bash
. ./init.sh

switchTo client2
commitNewFile work2
git push
switchTo client1
commitNewFile work1
#git pull --no-edit
git push
echo DONE

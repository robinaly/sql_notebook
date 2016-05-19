#!/bin/bash
#
# Grabs the newest version of the sql kernel and replaces the git hash in Dockerfile such that the kernel is always up to date
# with the git repository.
#
ORG=$PWD
OUT=$RANDOM
git clone http://github.com/robinaly/sql_kernel.git $OUT
cd $OUT
HASH=$(git rev-parse HEAD)
cd $ORG
rm -rf $OUT
sed -i.bak -e "s!RUN pip install git+https://github.com/robinaly/sql_kernel.git@.*!RUN pip install git+https://github.com/robinaly/sql_kernel.git@$HASH!" Dockerfile
docker build -t "sql-notebook" .
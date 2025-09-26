#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR

set -ex
if [ -n "$1" ]; then
  export PROJECT=$1
else
  echo "USAGE : $0 project_name"
  exit 1
fi

cd $PROJECT
bun i
bun x $PROJECT

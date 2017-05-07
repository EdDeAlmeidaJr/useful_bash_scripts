#!/bin/sh

THIS_DIR=`pwd`
LISTA=`ls`

for i in $LISTA; do
  dirname="$THIS_DIR/$i"
  echo $dirname
  cd $dirname
  if [ -d .git ]; then
    git pull
  else
    echo "Not a GIT repository..."
  fi
done

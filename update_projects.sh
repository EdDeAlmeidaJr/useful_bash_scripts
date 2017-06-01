#!/bin/sh

THIS_DIR=`pwd`
LISTA=`du -a | tr "\t" " " | cut -d " " -f 2 | cut -c 2-`

for i in $LISTA; do
  dirname="$THIS_DIR$i"
  if [ -d $dirname ]; then
  	cd $dirname
  	if [ -d .git ]; then
  	  echo "Git repository => $dirname => updating"
  	  git pull
  	fi
  fi
done

exit 0

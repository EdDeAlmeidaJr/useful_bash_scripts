#!/bin/sh

curl $(youtube-dl -g -f 18 "http://www.youtube.com/watch?v=$1") | mplayer -dumpstream -dumpfile $1.mp4 -cache 8192 -

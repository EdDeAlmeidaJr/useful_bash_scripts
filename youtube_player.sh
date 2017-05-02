#!/bin/sh

curl $(youtube-dl -g -f 18 "http://www.youtube.com/watch?v=$1") | mplayer -cache 8192 -

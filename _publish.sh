#!/bin/sh

jekyll build &&
rsync -avz --delete-excluded -P _site/ paulroub@findnoodles.com:platform

#!/bin/sh

rsync -avz --delete-excluded -P _site/ paulroub@findnoodles.com:platform

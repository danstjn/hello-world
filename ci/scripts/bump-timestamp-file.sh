#!/bin/sh

set -e # fail fast
set -x # print commands

git clone github-resource-gist updated-gist

cd updated-gist
date > bumpme

git config --global user.email "dannellstj@gmail.com"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"

echo "It worked, yaay!"

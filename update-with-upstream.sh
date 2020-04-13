#!/bin/bash

my_url="git@github.com:staehle/prezto.git"
upstream_url="https://github.com/sorin-ionescu/prezto.git"

set -ex

git checkout master

git remote remove upstream || true

git remote add upstream ${upstream_url}

git remote update

git merge upstream/master

git push origin master

echo "done :)"



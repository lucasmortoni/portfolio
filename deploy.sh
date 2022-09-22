#!/usr/bin/env sh

set -e
yarn build

cd dist

git init
git checkout -b main
git add --all
git commit -m 'deploy: configs initial setup deploy from @lucasmortoni/portfolio'

git push -f git@github.com:lucasmortoni/lucasmortoni.github.io.git main

cd -

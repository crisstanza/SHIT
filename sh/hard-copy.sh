#!/bin/sh

cd ..
. shit-config.sh
. sh/shit-config-post.sh
clear

echo ""


cd gh-pages
cd demo
git rm -rf .
rm -rf *
cp -r ../../master/* .

echo ""
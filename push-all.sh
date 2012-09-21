#!/bin/sh

clear

echo ""
pwd

echo ""
cd master
pwd
git push
cd ..

echo ""
cd gh-pages
pwd
git push
cd ..

echo ""
cd zero
pwd
git push
cd ..

echo ""
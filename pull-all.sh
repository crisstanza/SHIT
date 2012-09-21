#!/bin/sh

clear

echo ""
pwd

echo ""
cd master
pwd
git pull
cd ..

echo ""
cd gh-pages
pwd
git pull
cd ..

echo ""
cd zero
pwd
git pull
cd ..

echo ""
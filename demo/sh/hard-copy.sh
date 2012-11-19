#!/bin/sh

cd ..
. shit-config.sh
. sh/shit-config-post.sh
clear

echo ""

if [ -d gh-pages ] ; then
	cd gh-pages
	if [ ! -d demo ] ; then
		mkdir demo
	else
		cd demo
		git rm -rf .
		rm -rf *
	fi
	cp -r ../master/* demo/
else 
	echo "[ERROR] branch 'gh-pages' was not found!"
fi

echo ""
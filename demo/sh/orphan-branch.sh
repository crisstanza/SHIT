#!/bin/sh

cd ..
. shit-config.sh
. sh/shit-config-post.sh
clear

echo ""


if [ "$1" == "" ] ; then
	echo "error: parameter BRANCH'S NAME missing"
else
	git clone -n git@github.com:$SHIT_USER/$SHIT_REPOSITORY.git
	cd $SHIT_REPOSITORY
	git checkout --orphan $1
	git rm -rf .
	echo .DS_Store > .gitignore
	git add .
	git commit -m "Initial commit"
	git push origin $1
	cd ..
	rm -rf $SHIT_REPOSITORY
fi

echo ""
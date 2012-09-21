#!/bin/sh

. shit-config.sh

clear

echo ""

if [ "$SHIT_USE_BRANCH_MASTER" -eq "1" ]; then
	# git checkout --orphan zero
	# git rm -rf .
	# echo .DS_Store > .gitignore
	# git add .
	# git commit -m "Initial commit"
	# git push origin zero
	git clone git@github.com:$SHIT_USER/$SHIT_REPOSITORY.git master
	echo ""
fi

if [ "$SHIT_USE_BRANCH_GH_PAGES" -eq "1" ]; then
	git clone git@github.com:$SHIT_USER/$SHIT_REPOSITORY.git -b gh-pages gh-pages
	echo ""
fi

if [ "$SHIT_USE_BRANCH_ZERO" -eq "1" ]; then
	git clone git@github.com:$SHIT_USER/$SHIT_REPOSITORY.git -b zero zero
	echo ""
fi
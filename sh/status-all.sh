#!/bin/sh

cd ..
. shit-config.sh
. sh/shit-config-post.sh
clear

echo ""
pwd

for branch in ${SHIT_USE_BRANCH[@]} ; do

	branch_name=${branch%%=*}
	branch_use=${branch##*=}

	if [ "$branch_use" -eq "1" ] ; then
		echo ""
		cd $branch_name
		pwd
		git status
		if [ "$branch_name" == "heroku" ] ; then
			echo ""
			cd $SHIT_REPOSITORY
			pwd
			git status
			cd ..
		fi
		cd ..
	fi

done

echo ""
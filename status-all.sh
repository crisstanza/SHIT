#!/bin/sh

. shit-config.sh
clear

echo ""
pwd

for branch in ${SHIT_USE_BRANCH[@]} ; do

	branch_name=${branch%%=*}
	branch_use=${branch##*=}

	if [ "$branch_use" -eq "1" ]; then
		echo ""
		cd $branch_name
		pwd
		git status
		cd ..
	fi

done

echo ""
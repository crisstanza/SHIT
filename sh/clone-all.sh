#!/bin/sh

cd ..
. shit-config.sh
. shit-config-post.sh
clear

echo ""

for branch in ${SHIT_USE_BRANCH[@]} ; do

	branch_name=${branch%%=*}
	branch_use=${branch##*=}

	if [ "$branch_use" -eq "1" ] ; then
		git clone git@github.com:$SHIT_USER/$SHIT_REPOSITORY.git -b $branch_name $branch_name
		echo ""
	fi

done

# git checkout --orphan zero
# git rm -rf .
# echo .DS_Store > .gitignore
# git add .
# git commit -m "Initial commit"
# git push origin zero
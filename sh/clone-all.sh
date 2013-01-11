#!/bin/sh

cd ..
. shit-config.sh
. sh/shit-config-post.sh
clear

echo ""

for branch in ${SHIT_USE_BRANCH[@]} ; do

	branch_name=${branch%%=*}
	branch_use=${branch##*=}

	if [ "$branch_use" -eq "1" ] ; then
		git clone git@github.com:$SHIT_USER/$SHIT_REPOSITORY.git -b $branch_name $branch_name
		echo ""
		if [ "$branch_name" == "heroku" ] ; then
			cd $branch_name
			git clone git@heroku.com:$SHIT_REPOSITORY.git -o heroku
			echo ""
			cd ..
		fi
	fi

done

# git checkout --orphan zero
# git rm -rf .
# echo .DS_Store > .gitignore
# git add .
# git commit -m "Initial commit"
# git push origin zero
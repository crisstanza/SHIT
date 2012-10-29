#!/bin/sh

cd ..
. shit-config.sh
. shit-config-post.sh
clear

echo ""


echo "Delete a local branch:     git branch -D <LOCAL BRANCH'S NAME>"
echo "Delete a remote branch:    git push origin --delete <REMOTE BRANCH'S NAME>"

echo ""
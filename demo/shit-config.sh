#
# SHIT configuration file
#

#
# GitHub user (https://github.com/SHIT_USER)
#
SHIT_USER=crisstanza

#
# GitHub repository (https://github.com/SHIT_USER/SHIT_REPOSITORY)
#
# Magic values available: __PARENT_FOLDER__
#
SHIT_REPOSITORY=__PARENT_FOLDER__

#
# Specify which branches you want to use. Format: branch-name=1|0
#
SHIT_USE_BRANCH[${#SHIT_USE_BRANCH[@]}]="master=1"
SHIT_USE_BRANCH[${#SHIT_USE_BRANCH[@]}]="gh-pages=1"
SHIT_USE_BRANCH[${#SHIT_USE_BRANCH[@]}]="zero=1"
SHIT_USE_BRANCH[${#SHIT_USE_BRANCH[@]}]="nodejs=0"
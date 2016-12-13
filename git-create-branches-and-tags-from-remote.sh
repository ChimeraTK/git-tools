#!/bin/bash
BRANCHES=`git branch -r | grep -v origin/tags/ | grep -v origin/trunk | sed -e 's_origin/__'`
TAGS=`git branch -r | grep origin/tags/ | sed -e 's_origin/tags/__'`
echo ===================================
echo List of branches:
echo $BRANCHES
echo ===================================
echo List of branches:
echo $TAGS
echo ===================================
echo Continuing in 5 seconds...
sleep 5
for branch in $BRANCHES ; do
  echo Creating branch $branch...
  git branch $branch origin/$branch
done
echo ===================================
for tag in $TAGS ; do
  echo Creating tag $tag...
  git tag $tag origin/tags/$tag
done
echo ===================================
echo Branches:
git branch
echo ===================================
echo Tags:
git tag -l

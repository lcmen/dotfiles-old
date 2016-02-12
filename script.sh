#!/bin/sh

git log --oneline |
while read -r commit; do
  sha=$(echo $commit | awk '{print $1}')

  for file in $(git show $sha --name-only | grep "tm_properties"); do
    echo Commit: $commit, file: $file
  done
done

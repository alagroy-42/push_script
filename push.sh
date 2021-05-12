#!/bin/bash

files=$(git status -s | rev | cut -d' ' -f1 | rev)

files_to_add=$(`dirname $0`/ft_select/ft_select $files)

if [[ $files_to_add == "" ]]; then
	exit
fi

git add $files_to_add

read -p "Commit message: " message

git commit -m "$message"

branch=$(git branch | grep '\*' | tr -d '*')

git push origin $branch

git remote | grep upstream
if [ $? ]; then
	exit ;
fi

git push upstream $branch
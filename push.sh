#!/bin/bash

files=$(git status -s | rev | cut -d' ' -f1 | rev)

files_to_add=$(~/scripts/ft_select/ft_select $files)

files_to_fix=$(echo $files_to_add | tr ' ' '\n' | grep ".php")
echo $files_to_fix | grep ".php" 1>/dev/null

if [[ $? = 0 ]] && [[ $1 != '--no-fix' ]]; then
	echo $files_to_fix | xargs -n1 ~/php-cs-fixer fix --allow-risky=yes 
fi

git add $files_to_add

read -p "Commit message: " message

git commit -m "$message"

branch=$(git branch | grep '\*' | tr -d '*')

git push origin $branch

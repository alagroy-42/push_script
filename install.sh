#!/bin/bash

DIR="$HOME/scripts"
mkdir -p $DIR

command -v git >/dev/null 2>/dev/null

if [[ $? != 0 ]]; then
	sudo apt-get install git;
fi

mkdir -p $DIR

git clone https://github.com/alagroy-42/ft_select.git $DIR/ft_select

make -C ~/scripts/ft_select

cp push.sh $DIR/push.sh	

command -v wget >/dev/null 2>/dev/null

if [[ $? != 0 ]]; then
	sudo apt-get install wget;
fi

SHELL_FILE=~/.`echo $SHELL | rev | cut -d'/' -f1 | rev`rc
echo "export PATH=\$PATH:"$DIR >> $SHELL_FILE

#!/bin/zsh

DIR="$HOME/scripts"
mkdir -p $DIR
SHELL="/bin/zsh"

command -v git >/dev/null 2>/dev/null

if [[ $? != 0 ]]; then
	sudo apt-get install git;
fi

mkdir -p $DIR

git clone https://github.com/alagroy-42/ft_select.git $DIR/ft_select >/dev/null 2>&1 

make -C ~/scripts/ft_select >/dev/null 2>&1 

cp push.sh $DIR/push.sh	

command -v wget >/dev/null 2>/dev/null

if [[ $? != 0 ]]; then
	sudo apt-get install wget;
fi

SHELL_FILE=~/.`echo $SHELL | rev | cut -d'/' -f1 | rev`rc
echo "export PATH=\$PATH:"$DIR >> $SHELL_FILE
echo "alias push=push.sh" >> $SHELL_FILE

echo 'push_script successfully installed'
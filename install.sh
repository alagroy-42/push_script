#!/bin/bash

$DIR=$HOME/scripts

dpkg-query -l git >&- 2>&-

if [[ $? != 0 ]]; then
	sudo apt-get install git;
fi

mkdir -p $DIR

git clone https://github.com/alagroy-42/ft_select.git $DIR/ft_select

cp push.sh $DIR/push.sh	

dpkg-query -l wget >&- 2>&-

if [[ $? != 0 ]]; then
	sudo apt-get install wget;
fi

wget https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v2.16.4/php-cs-fixer.phar -O $DIR/php-cs-fixer

sudo chmod a+x $DIR/php-cs-fixer

echo "alias php-cs-fixer='~/scripts/php-cs-fixer'" >> ~/.zshrc
echo "alias php-cs-fixer='~/scripts/php-cs-fixer'" >> ~/.bashrc
echo "alias push='~/scripts/push.sh'" >> ~/.zshrc

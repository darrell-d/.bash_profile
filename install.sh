#!/bin/bash
cp ./.bash_profile_extras ~/
cp ./.bashrc_extras ~/
echo "

if [ -f ~/.bash_profile_extras ]; then
	. ~/.bash_profile_extras
fi"  | tee -a ~/.bash_profile
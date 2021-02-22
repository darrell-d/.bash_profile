#!/bin/bash
#/usr/bin/bash
if [ ! -f ~/.bash_profile_extras ]; then
	echo "Copying bash profiles"
	cp ./.bash_profile_extras ~/
	cp ./.bashrc_extras ~/
	cp ./.bash_custom ~/

	# Append to `.bash_profile`
	echo "
if [ -f ~/.bash_profile_extras ]; then
	. ~/.bash_profile_extras
fi
if [ -f ~/.bashrc_extras ]; then
	. ~/.bashrc_extras
fi"  | tee -a ~/.bash_profile

	source ~/.bash_profile
fi
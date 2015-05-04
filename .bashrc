# .bashrc
environment=$(uname)
user=$(whoami)
environment= ${uname,,} #to lowercase
echo $user


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
	if [ -x /usr/bin/fortune ] && [ -x /usr/bin/cowsay ]; then # a little fun
		fortune | cowsay
	fi
fi

if [ -f ./.ssh_alias ]; then
	. .ssh_alias
fi

#For when I forget to use sudo
alias fuck='sudo $(history -p \!\!)'

#Preferred ls usage and typo anticipation
alias ls='ls -hAl'
alias sl='ls -hAl'


#Easy cd shortcuts and a check for cygwin
cygwin_lc="cygwin"
if [ "${environment/$cygwin_lc}" == "cygwin" ] || [ "${environment/$cygwin_lc}" == "CYGWIN" ]; then
	path="/cygdrive/c/Users/"
	alias ~='cd $path$user'
else
	alias ~='cd ~'
fi

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../../'
alias .4='cd ../../../../'

up()
{
    COUNTER=0
    while [ $COUNTER -lt $1 ]; do
        cd ../
       let "COUNTER+=1"
    done
    
}

#clear
alias cls='clear'



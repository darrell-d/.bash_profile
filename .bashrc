# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
	if [ -x /usr/bin/fortune ] && [ -x /usr/bin/cowsay ]; then # a little fun
		fortune | cowsay
	fi
fi

# For when I forget to use sudo
alias fuck='sudo $(history -p \!\!)'

# Preferred ls usage and typo anticipation
alias ls='ls -hAl'
alias sl='ls -hAl'


alias ~='cd ~'
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

#Disk usage
alias howfull='df -h'
alias foldersize='du -h | less'

#Custom imports

if [ -f ./.ssh_alias ]; then
	. .ssh_alias
fi

if [ -f ./.bashrc_custom ]; then
	. .bashrc_custom
fi

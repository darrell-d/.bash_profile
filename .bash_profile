#Custom Aliases

#Quick connect to server
alias darrelld='ssh ***@****.***'

#For when I forget to use sudo
alias fuck='sudo $(history -p \!\!)'

#Preferred ls usage and typo anticipation
alias ls='ls -hAl'
alias sl='ls -hAl'


#Easy cd shortcuts

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



#!/usr/bin/env bash

# Public IP address
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

function update-bash-configs() {
    currdir=$(pwd);
    cd ~/.bash && git fetch origin && git pull origin master && cd $currdir
}

#PHPStorm XDebug ENV
function setXDebug() {
    export XDEBUG_CONFIG="idekey=PHPSTORM"
}

alias xdebug_on="setXDebug"
alias xdebug_off='unset XDEBUG_CONFIG'
alias cafe='cat /dev/urandom | hexdump -C | grep "ca fe"'
alias ssh-register-agent='eval $(ssh-agent) && ssh-add'
alias docker-clean='docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
alias docker-rebuild='docker-clean && docker build .'
alias cow="fortune -s fortunes | cowsay"
alias top="htop"

if [ -c ~/.bash/local_aliases ]; then
    . ~/.bash/local_aliases
fi

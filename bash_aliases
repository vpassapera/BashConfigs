#!/usr/bin/env bash

#Composer no xdebug
function composer() {
    COMPOSER="$(which composer)" || { echo "Could not find composer in path" >&2 ; return 1 ; } && sudo phpdismod -v $(phpquery -V) -s cli xdebug ;
    $COMPOSER "$@" ;
    STATUS=$? ;
    sudo phpenmod -v $(phpquery -V) -s cli xdebug ;
    return $STATUS ;
}

function update-bash-configs() {
    currdir=$(pwd);
    cd /home/vagrant/.bash && git fetch origin && git pull origin master && cd $currdir
}

#PHPStorm XDebug ENV
function setXDebug() {
    export XDEBUG_CONFIG="idekey=PHPSTORM"
}

alias xdebug_on="setXDebug"
alias xdebug_off='unset XDEBUG_CONFIG'
alias cafe='cat /dev/urandom | hexdump -C | grep "ca fe"'


if [ -c ~/.bash/local_aliases ]; then
    . ~/.bash/local_aliases
fi

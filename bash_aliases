#!/usr/bin/env bash

#PHPStorm XDebug ENV
function setXDebug() {
    export XDEBUG_CONFIG="idekey=PHPSTORM"
}

alias xdebug_on="setXDebug"
alias xdebug_off='unset XDEBUG_CONFIG'

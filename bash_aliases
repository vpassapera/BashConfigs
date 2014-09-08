#!/usr/bin/env bash

function setDebug() {
    export XDEBUG_CONFIG="idekey=PHPSTORM"
}

alias debug_on="setDebug"
alias debug_off='unset XDEBUG_CONFIG'

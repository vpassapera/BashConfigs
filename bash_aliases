#!/usr/bin/env bash

function setDebug() {
    export XDEBUG_CONFIG="idekey=PHPSTORM"
}

function puppet_module_install() {
    local module_name=$1
    local directory="${2:-`pwd`}"
    puppet module install ${module_name} --modulepath=${directory}
}

function run_yo() {
    /usr/bin/nodejs /usr/bin/yo $1 $2 $3
}

function run_bower() {
    /usr/bin/nodejs /usr/bin/bower $1 $2 $3
}

function run_grunt() {
    /usr/bin/nodejs /usr/bin/grunt $1 $2 $3
}

function run_npm() {
    /usr/bin/nodejs /usr/bin/npm $1 $2 $3
}

alias debug_on="setDebug"
alias debug_off='unset XDEBUG_CONFIG'
alias composer="composer.phar"
alias puppet-module-install=puppet_module_install
alias yo=run_yo
alias bower=run_bower
alias grunt=run_grunt
alias npm=run_npm

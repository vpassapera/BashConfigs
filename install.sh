#!/bin/bash
echo "Enabling Aliases..."
rm -r $HOME/.bash_it/aliases/enabled 2> /dev/null
mkdir -p $HOME/.bash_it/aliases/enabled
ln -s $HOME/.bash_it/aliases/available/general.aliases.bash $HOME/.bash_it/aliases/enabled/general.aliases.bash
ln -s $HOME/.bash_it/aliases/available/git.aliases.bash $HOME/.bash_it/aliases/enabled/git.aliases.bash
ln -s $HOME/.bash_it/aliases/available/vagrant.aliases.bash $HOME/.bash_it/aliases/enabled/vagrant.aliases.bash

echo "Enabling Completion..."
rm -r $HOME/.bash_it/completion/enabled 2> /dev/null
mkdir -p $HOME/.bash_it/completion/enabled
ln -s $HOME/.bash_it/completion/available/bash-it.completion.bash $HOME/.bash_it/completion/enabled/bash-it.completion.bash
ln -s $HOME/.bash_it/completion/available/capistrano.completion.bash $HOME/.bash_it/completion/enabled/capistrano.completion.bash
ln -s $HOME/.bash_it/completion/available/defaults.completion.bash $HOME/.bash_it/completion/enabled/defaults.completion.bash
ln -s $HOME/.bash_it/completion/available/gem.completion.bash $HOME/.bash_it/completion/enabled/gem.completion.bash
ln -s $HOME/.bash_it/completion/available/git.completion.bash $HOME/.bash_it/completion/enabled/git.completion.bash
ln -s $HOME/.bash_it/completion/available/git_flow.completion.bash $HOME/.bash_it/completion/enabled/git_flow.completion.bash
ln -s $HOME/.bash_it/completion/available/grunt.completion.bash $HOME/.bash_it/completion/enabled/grunt.completion.bash
ln -s $HOME/.bash_it/completion/available/ssh.completion.bash $HOME/.bash_it/completion/enabled/ssh.completion.bash
ln -s $HOME/.bash_it/completion/available/vagrant.completion.bash $HOME/.bash_it/completion/enabled/vagrant.completion.bash
ln -s $HOME/.bash_it/completion/available/composer.completion.bash $HOME/.bash_it/completion/enabled/composer.completion.bash
ln -s $HOME/.bash_it/completion/available/dirs.completion.bash $HOME/.bash_it/completion/enabled/dirs.completion.bash
ln -s $HOME/.bash_it/completion/available/pip.completion.bash $HOME/.bash_it/completion/enabled/pip.completion.bash
ln -s $HOME/.bash_it/completion/available/system.completion.bash $HOME/.bash_it/completion/enabled/system.completion.bash


echo "Enabling Plugins..."
rm -r $HOME/.bash_it/plugins/enabled 2> /dev/null
mkdir -p $HOME/.bash_it/plugins/enabled
ln -s $HOME/.bash_it/plugins/available/base.plugin.bash $HOME/.bash_it/plugins/enabled/base.plugin.bash
ln -s $HOME/.bash_it/plugins/available/browser.plugin.bash $HOME/.bash_it/plugins/enabled/browser.plugin.bash
ln -s $HOME/.bash_it/plugins/available/dirs.plugin.bash $HOME/.bash_it/plugins/enabled/dirs.plugin.bash
ln -s $HOME/.bash_it/plugins/available/extract.plugin.bash $HOME/.bash_it/plugins/enabled/extract.plugin.bash
ln -s $HOME/.bash_it/plugins/available/git.plugin.bash $HOME/.bash_it/plugins/enabled/git.plugin.bash
ln -s $HOME/.bash_it/plugins/available/ssh.plugin.bash $HOME/.bash_it/plugins/enabled/ssh.plugin.bash
ln -s $HOME/.bash_it/plugins/available/vagrant.plugin.bash $HOME/.bash_it/plugins/enabled/vagrant.plugin.bash
ln -s $HOME/.bash_it/plugins/available/alias-completion.plugin.bash $HOME/.bash_it/plugins/enabled/alias-completion.plugin.bash

echo "Removing previous bash configurations"...
rm $HOME/.bash_aliases $HOME/.bash_exports $HOME/.bash_logout $HOME/.bash_profile $HOME/.bashrc $HOME/.bash_symfony_autocomplete 2> /dev/null

echo "Creating new links..."
ln -s $HOME/.bash/bash_aliases $HOME/.bash_aliases
ln -s $HOME/.bash/bash_exports $HOME/.bash_exports
ln -s $HOME/.bash/bash_logout $HOME/.bash_logout
ln -s $HOME/.bash/bash_profile $HOME/.bash_profile
ln -s $HOME/.bash_profile $HOME/.bashrc
ln -s $HOME/.bash/bash_symfony_autocomplete $HOME/.bash_symfony_autocomplete

echo "Re-sourcing..."
source $HOME/.bashrc
echo "Done."


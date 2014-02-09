echo "Enabling Aliases..."
rm -r $HOME/.bash_it/aliases/enabled 2> /dev/null
mkdir -p $HOME/.bash_it/aliases/enabled
ln -s $HOME/.bash_it/aliases/available/general.aliases.bash $HOME/.bash_it/aliases/enabled/general.aliases.bash
ln -s $HOME/.bash_it/aliases/available/git.aliases.bash $HOME/.bash_it/aliases/enabled/git.aliases.bash
ln -s $HOME/.bash_it/aliases/available/vagrant.aliases.bash $HOME/.bash_it/aliases/enabled/vagrant.aliases.bash

echo "Enabling Completion..."
rm -r $HOME/.bash_it/completion/enabled 2> /dev/null
mkdir -p $HOME/.bash_it/completion/enabled
ln -s $HOME/.bash_it/aliases/available/bash-it.completion.bash $HOME/.bash_it/aliases/enabled/bash-it.completion.bash
ln -s $HOME/.bash_it/aliases/available/capistrano.completion.bash $HOME/.bash_it/aliases/enabled/capistrano.completion.bash
ln -s $HOME/.bash_it/aliases/available/defaults.completion.bash $HOME/.bash_it/aliases/enabled/defaults.completion.bash
ln -s $HOME/.bash_it/aliases/available/gem.completion.bash $HOME/.bash_it/aliases/enabled/gem.completion.bash
ln -s $HOME/.bash_it/aliases/available/git.completion.bash $HOME/.bash_it/aliases/enabled/git.completion.bash
ln -s $HOME/.bash_it/aliases/available/git_flow.completion.bash $HOME/.bash_it/aliases/enabled/git_flow.completion.bash
ln -s $HOME/.bash_it/aliases/available/grunt.completion.bash $HOME/.bash_it/aliases/enabled/grunt.completion.bash
ln -s $HOME/.bash_it/aliases/available/ssh.completion.bash $HOME/.bash_it/aliases/enabled/ssh.completion.bash

echo "Enabling Plugins..."
rm -r $HOME/.bash_it/plugins/enabled 2> /dev/null
mkdir -p $HOME/.bash_it/plugins/enabled
ln -s $HOME/.bash_it/plugins/available/base.plugin.bash $HOME/.bash_it/plugins/enabled/base.plugin.bash
ln -s $HOME/.bash_it/plugins/available/extract.plugin.bash $HOME/.bash_it/plugins/enabled/extract.plugin.bash
ln -s $HOME/.bash_it/plugins/available/git.plugin.bash $HOME/.bash_it/plugins/enabled/git.plugin.bash
ln -s $HOME/.bash_it/plugins/available/ssh.plugin.bash $HOME/.bash_it/plugins/enabled/ssh.plugin.bash
ln -s $HOME/.bash_it/plugins/available/vagrant.plugin.bash $HOME/.bash_it/plugins/enabled/vagrant.plugin.bash

echo "Removing previous bash configurations"...
rm $HOME/.bash_aliases $HOME/.bash_exports $HOME/.bash_logout $HOME/.bash_profile $HOME/.bashrc $HOME/.bash_symfony_autocomplete 2> /dev/null

echo "Creating new links..."
ln -s $HOME/.bash/bash_aliases $HOME/.bash_aliases
ln -s $HOME/.bash/bash_exports $HOME/.bash_exports
ln -s $HOME/.bash/bash_logout $HOME/.bash_logout
ln -s $HOME/.bash/bash_profile $HOME/.bash_profile
ln -s $HOME/.bash/bashrc $HOME/.bashrc
ln -s $HOME/.bash/bash_symfony_autocomplete $HOME/.bash_symfony_autocomplete
echo "Done."

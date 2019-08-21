# Vundle

vim package manager

## install packages

list them in your vimrc like

`Plugin gituser/git-repo-name`

and to install from the command line do one of these

`vim +PluginInstall +qall`

## how it works

Vundle tracks what plugins you want configured by the Plugin commands in your
.vimrc. Each Plugin command tells Vundle to activate the script on startup
adding it to your runtimepath. Commenting out or removing the line will
disable the Plugin.

## interactive-mode

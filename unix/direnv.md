# `direnv`

https://direnv.net/

`direnv` is an environment switcher for the shell. It knows how to hook into `bash`,
`zsh`, `tcsh` and `fish` shell to load or unload environment variables depending on
the current directory. This allows project-specific environment variables
without cluttering the `~/.profile` file.

Before each prompt, `direnv` checks for the existence of a `".envrc"` file in the
current and parent directories. If the file exists (and is authorized), it is
loaded into a bash sub-shell and all exported variables are then captured by
`direnv` and then made available to the current shell.

## setup
Add the following line at the end of the `~/.zshrc` file:

`eval "$(direnv hook zsh)"`

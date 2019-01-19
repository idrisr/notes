# zsh

## completions

todo - do this for running tmux sessions.  
or find someone who already did it  
http://mads-hartmann.com/2017/08/06/writing-zsh-completion-scripts.html


---
if some autocomplete shit stops working try

```shell
rm ~/.zcompdump*
```

## `compinit`
When the completion system is being initialized through `compinit` zsh will look
through all the files accessible via the `fpath` and read the first line they
contain, as such you simply register a completion function by putting it
somewhere that’s on your `fpath` and ensuring that the first line contains the
`compdef` command like this `#compdef _foobar foobar;`

## `compsys`
The zsh completion system `compsys` is the part of zsh that takes care of
providing the nice tab-completions you’re used to when typing in commands in
your shell.


## oh-my-zsh

`$PROMPT`
`$RPROMPT`


## autocomplete
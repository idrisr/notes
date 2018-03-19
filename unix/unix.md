# Command Cheat Sheet

## `find`

`find . -iname "*.c"` - find all '.c' files in dir

todo - a better way to do this?

## `mktemp`
todo - how to use this properly in scripts?


# Dirs
#### `/usr/local/bin`
* was where the local adminstrator would store executables for
* all local users to use that would not pollute the official Unix distribution
executables.

#### `/usr/local/opt/`
```bash
~/idNotes (master ✔) ᐅ pip install flask
zsh: /usr/local/bin/pip: bad interpreter:
/usr/local/opt/python3/bin/python3.5: no such file or directory
* HOMEBREW_PREFIX: /usr/local
```



* read [this](https://stackoverflow.com/questions/35337601/why-is-there-a-usr-local-opt-directory-created-by-homebrew-and-should-i-use-it)
* for homebrew, it provides a path for a formula's contents that does not change
across version upgrades.
* todo - understand tree of brew symlinks

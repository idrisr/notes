# Homebrew

* Homebrew installs packages to their own directory and then symlinks their files
into /usr/local.

## Cask

`brew cask` is an extension to brew that allows management of graphical
applications through the Cask project.

## Taps

`brew tap` adds more repositories to the list of formulae that brew tracks,
updates, and installs from. By default, tap assumes that the repositories come
from GitHub, but the command isn’t limited to any one location.

## Bottles

binary packages

## Cellar

where the kegs are installed, ie `/usr/local/Cellar`

## Kegs

the install prefix of a formula

### keg-only

For a software to be "keg-only" means it is installed in `/usr/local/Cellar` but
not linked into places like `/usr/local/bin`, `/usr/local/lib`, etc. That means
other software that depends on it has to be compiled with specific instructions
to use the files in `/usr/local/Cellar`. That's done automatically by brew
install when a formula specifies keg-only dependencies.

## Formula

The package definition

### `brew udpate`

updates `brew` itself

### upgrade a formula version
```bash
brew upgrade <my-favorite-formula>
```

### check version of formula
```bash
brew list --versions | ack ${formula}
```

### install specific version
```bash
brew switch <formula> <version>
```

### info on formula
```bash
brew info <version>
```

### install older version not on your machine
see [here](https://stackoverflow.com/questions/39187812/homebrew-how-to-install-older-versions)

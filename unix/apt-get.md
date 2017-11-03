# `apt-get`

## `update`
`apt-get update` updates the list of available packages and their versions, but
it does not install or upgrade any packages.

## `upgrade`
`apt-get upgrade` actually installs newer versions of the packages you have.
After updating the lists, the package manager knows about available updates for
the software you have installed. This is why you first want to update.

# Package
An Ubuntu package is exactly that: a collection of items (scripts, libraries,
text files, a manifest, license, etc) that enable you to install a piece of
software ordered in such a way that the package manager can unpack it and put it
into your system.

saved in in a cached directory at `/var/cache/apt/archives/`

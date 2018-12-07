# `defaults`

basically it reads and modifies the `plist`s that are stored in
`~/Library/Preferences` in a binary format.

## example
```shell
defaults delete com.apple.dt.Xcode DVTPlugInManagerNonApplePlugIns-Xcode-9.0.1
```

## man page
command-line shell. Mac OS X applications and other programs use the defaults
system to record user preferences and other information that must be maintained
when the applications aren't running (such as default font for new documents, or
the position of an Info panel). Much of this information is accessible through
an application's Preferences panel, but some of it isn't, such as the position
of the Info panel. You can access this information with `defaults`
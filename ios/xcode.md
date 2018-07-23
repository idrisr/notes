# XCode

## XCode 9 tips and tricks

from [here](https://talk.objc.io/episodes/S01E60-xcode-9-productivity-tips)
* easy to switch between new swift versions
* can directly clone from github in xcode
* directly search error messages into Google
* `command` + `ctrl` + `shift` + `c` - copy symbol of function
* jump bar documentation, reveal in navigator
* `command` + `option` + `\` documentation template generation
* Assistant Editor -> Generate Interface
* `File` -> `Project Settings` -> `New Build System`
* better source control integration


## saving custom keyboard shortcuts

- custom keyboard shortcuts are saved here. I think XCode overwrites them each
time you run in, so a `symlink` from `dotfiles` wont work.

`/Users/id/Library/Developer/Xcode/UserData/KeyBindings/Custom.idekeybindings`

## creating color profiles
- from [here](https://www.natashatherobot.com/xcode-color-palette/)

## build settings sections
* architectures
* assets
* build locations
* build options
* deployment
* headers
* kernel module
* linking
* packaging
* search paths
* signing
* testing
* text-based API
* versioning
* lots of apple llvm 9.0 stuff
* interface builder compiler options
* OSA (applescript) compile options
* static analyzer stuff
* swift compiler stuff
* user-defined

## shortcuts

* show all tabs  
`shift` + `command` + `\`

## custom key bindings
* save in `~/Library/Developer/Xcode/UserData/KeyBindings/Custom.idekeybinding`

## build variables
from [here](https://stackoverflow.com/questions/36323031/what-the-different-between-srcroot-and-project-dir)

[retired apple doc](https://developer.apple.com/legacy/library/documentation/DeveloperTools/Reference/XcodeBuildSettingRef/1-Build_Setting_Reference/build_setting_ref.html#//apple_ref/doc/uid/TP40003931-CH3-SW49)


* `SRCROOT`
* `SOURCE_ROOT`
* `PROJECT_DIR`
* `PROJECT_FILE_PATH`
* `SWIFT_MODULE_NAME`
* `PROJECT_NAME`

### archive
xcarchive contains your app and dsym files. .DSYM is required to desymbolicate
your crash logs. Right click on saved .xcarchive and select show package
contents to see what it contains.

### package ipa
IPA is a zipped up Payload folder which has YourApp.app bundle. .app contains
all your application resources like images, plist files, compressed nibs and the
executable, CodeSigning resources,etc.

```swift
# IPA structure
/Payload/
/Payload/Application.app
/iTunesArtwork
/iTunesArtwork@2x
/iTunesMetadata.plist
/WatchKitSupport/WK
```

# Build levels
from [here](https://stackoverflow.com/questions/16649635/what-is-the-fourth-columns-meaning-of-xcodes-setting)

* columns from right to left
* in `Target` or `Project`
  * XCode -> [Project|Target] -> Build Settings -> Levels

### Targets
| Resolved 	| Target 	| Project 	| ios Default 	|
|----------	|--------	|---------	|-------------	|

### Projects
| Resolved | Project | ios Default |
|----------|---------|-------------|

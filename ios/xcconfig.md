
* [blog post](http://www.jontolof.com/cocoa/using-xcconfig-files-for-you-xcode-project/)
* [StackOverflow](https://stackoverflow.com/questions/11164876/is-there-a-way-export-xcode-build-settings-to-xcconfig-file/20862973#20862973)

# xcconfig

## targets vs configuration

### target

something you build, like an app for iphone, or a set of unit tests. You can pick which files belong to which targets.

### configuration
set of settings which can span multiple targets.

Debug can be a configuration with compiler flags and settings, which gives you as much information about the software as possible to simplify bug hunting and development, while a release target might strip all those debug-logs and focus on optimization.

A configuration can be created on a project level and on a target level.


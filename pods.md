# CocoaPods

from [here](https://www.objc.io/issues/6-build-tools/cocoapods-under-the-hood/)

## Core Components

several ruby gems, including:

### CocoaPods/CocoaPods

This is the user-facing component and is activated whenever you call a `pod` command. It includes all the functionality you need to actually use CocoaPods, and makes use of all of the other gems to perform tasks.

### CocoaPods/Core

The Core gem provides support for working with the files that are involved with CocoaPods, mainly the Podfile and podspecs.

### CocoaPods/Xcodeproj

This gem handles all of the project file interactions. It has the ability to both create and modify `.xcodeproj` and `.xcworkspace` files. It is also useable as a standalone gem, so if you ever wanted to write scripts and easily modify the project file, this gem is for you.

### `.podspec`

The .podspec is a file that determines how a particular pod is added to a project. It supports features such as listing source files, frameworks, compiler flags, and any other dependencies that a library requires, to name a few.

...tells you version info, dependencies, metadata, source location, etc.

### `Podfile`

The Podfile is the file that defines the pods you want to use. It is highly customizable, and you can be as specific as you’d like.

## How they work#

CocoaPods is a library dependency management tool for OS X and iOS applications. With CocoaPods, you can define your dependencies, called pods, and manage their versions easily over time and across development environments.

# What happens on `pod install`

`pod install --verbose`

1. Look at the `podspec`'s  for each pod and their dependencies and figure out the list of what's needed.

2. Figure out which versions to use and fix conflicts

3. go download the source. get the source as listed in the `.podspec`. Store the source in the `Pods` directory.

4. Generate `pods.xcodeproj`, and the accompanying files.

## `~/.cocoapods`
`podspecs` stored locally here

## `Podfile.lock`
contains `openssl sha1` hashes of the podspecs used and of the podfile

## `Manifest.lock`

## `Podfile.lock`

## `Podfile.lock`

# `#available`

from [here](https://www.bignerdranch.com/blog/hi-im-available/)

Swift 2.0 introduced a new language construct, `#available`, that helps solve the
problems that crop up when your app needs to support multiple versions of iOS or
OS X.

Using some API that’s available only in iOS 9? The Swift availability features
prevent you from trying to run that code when the app is running on iOS 8.

But first: there’s a common misconception that `#available` is used for including
or excluding code at compile time. Given the name, it’s reasonable to think,
“This call is available only on watchOS, so this extension I’m writing for iOS
shouldn’t include that code at all because it’s not available.”

`#available` is the wrong tool for this. Code in `#available` clauses always
compile. You’ll want to use the `#if` build configuration statement instead.

# Target SDK
* the sdk you link against

The first is the Target SDK version. SDK stands for “Software Development Kit,”
which is the set of libraries and headers for a particular OS version. This is
the version of Apple’s APIs that you compile and link against. The SDK describes
the set of API available to you. Linking against the iOS 9 SDK means you can use
any API that comes with iOS 9. You won’t be able to directly use stuff
introduced in iOS 10. Modern Xcodes are tightly coupled to the SDKs for the
latest OS versions, so if you upgrade your Xcode, you will be linking against a
newer version of the SDK.

# Deployment Target
* minimum version you'll support

The other version number is the Deployment Target. This declares the oldest OS
version your app will support. How far back you decide to support is a business
decision based on how much work you are willing to do for customers on older
versions of the OS.

set in `Project -> Info`

## Two Problems

### Compile Time
The first happens at compile time: I want to know if I’m accidentally using API
that may be too fresh for my deployment target. It’s much better to catch errors
at compile time.

### Run Time
The other problem happens at run time: you need to construct your program logic
so that you decide whether or not to enter the code paths that use newer API.

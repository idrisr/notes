# `OSLog`

watch me: https://developer.apple.com/videos/play/wwdc2016/721/

A custom log object that can be passed to logging functions in order to send
messages to the logging system.

# activity tracing
* [readme](https://www.objc.io/issues/19-debugging/activity-tracing/)
* [watchme](https://developer.apple.com/videos/wwdc2014/#714)

* c inter-op

# privary
```swift
%{public}@
```

# `log`

```swift
log config --status
```

`diagnosticd`


## streaming command line
can put in a shell script and share with others

```
xcrun simctl spawn booted log stream --debug --predicate 'subsystem == "com.backgroundFun.general"'
```

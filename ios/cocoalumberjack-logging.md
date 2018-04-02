# CocoaLumberJack

[here](https://github.com/CocoaLumberjack/CocoaLumberjack)

A fast & simple, yet powerful & flexible logging framework for Mac and iOS

```swift
import CocoaLumberjack
DDLog.add(DDTTYLogger.sharedInstance) // TTY = Xcode console
DDLog.add(DDASLLogger.sharedInstance) // ASL = Apple System Logs

let fileLogger: DDFileLogger = DDFileLogger() // File Logger
fileLogger.rollingFrequency = TimeInterval(60*60*24)  // 24 hours
fileLogger.logFileManager.maximumNumberOfLogFiles = 7
DDLog.add(fileLogger)

...

DDLogVerbose("Verbose")
DDLogDebug("Debug")
DDLogInfo("Info")
DDLogWarn("Warn")
DDLogError("Error")
```

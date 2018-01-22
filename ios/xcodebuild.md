# `xcodebuild`

```bash
Usage: xcodebuild [-project <projectname>] [[-target <targetname>]...|-alltargets] [-configuration <configurationname>] [-arch <architecture>]... [-sdk [<sdkname>|<sdkpath>]] [-showBuildSettings] [<buildsetting>=<value>]... [<buildaction>]...
       xcodebuild [-project <projectname>] -scheme <schemeName> [-destination <destinationspecifier>]... [-configuration <configurationname>] [-arch <architecture>]... [-sdk [<sdkname>|<sdkpath>]] [-showBuildSettings] [<buildsetting>=<value>]... [<buildaction>]...
       xcodebuild -workspace <workspacename> -scheme <schemeName> [-destination <destinationspecifier>]... [-configuration <configurationname>] [-arch <architecture>]... [-sdk [<sdkname>|<sdkpath>]] [-showBuildSettings] [<buildsetting>=<value>]... [<buildaction>]...
       xcodebuild -version [-sdk [<sdkfullpath>|<sdkname>] [<infoitem>] ]
       xcodebuild -list [[-project <projectname>]|[-workspace <workspacename>]] [-json]
       xcodebuild -showsdks
       xcodebuild -exportArchive -archivePath <xcarchivepath> -exportPath <destinationpath> -exportOptionsPlist <plistpath>
       xcodebuild -exportLocalizations -localizationPath <path> -project <projectname> [-exportLanguage <targetlanguage>...]
       xcodebuild -importLocalizations -localizationPath <path> -project <projectname>
```

## `instruments`
```bash
instruments -s devices
```

## show sdks available
```bash
>> xcodebuild -showsdks
iOS SDKs:
	iOS 11.2                      	-sdk iphoneos11.2

iOS Simulator SDKs:
	Simulator - iOS 11.2          	-sdk iphonesimulator11.2

macOS SDKs:
	macOS 10.13                   	-sdk macosx10.13

tvOS SDKs:
	tvOS 11.2                     	-sdk appletvos11.2

tvOS Simulator SDKs:
	Simulator - tvOS 11.2         	-sdk appletvsimulator11.2

watchOS SDKs:
	watchOS 4.2                   	-sdk watchos4.2

watchOS Simulator SDKs:
	Simulator - watchOS 4.2       	-sdk watchsimulator4.2
```

# `ibtool`

`/usr/bin/ibtool`

`man ibtool`

from an error log

```
Failed to compile nib consisting of IBProxyObject, IBProxyObject, IBUIView, and IBUIViewAutolayoutGuide.
```

* `IBProxyObject`
* `IBUIView`
* `IBUIViewAutolayoutGuide`

## from a SB / IB Xcode crash
```
# bash
> /var/folders/y3/2hnh2mxn04v_8vczd024p3bw0000gp/T/IB-agent-diagnostics_2018-05-20_13-30-32_554000 ᐅ ack -o "IB[A-Za-z]+" Log.txt| sort -u

IBAbstractPlatformToolProxy
IBCLIErrorForwarder
IBCLIInterfaceBuilderToolPersona
IBCLIServerRunSingleInvocation
IBCLIServerRunSingleInvocationWithIODirectedAtPipesAndUnlinkOnSuccess
IBCocoaTouchFramework
IBCocoaTouchPlatformToolDescription
IBCocoaTouchStoryboardDocumentCompiler
IBCocoaTouchToolLaunchContext
IBCocoaTouchToolProxy
IBCocoaTouchXIBDocumentCompiler
IBCompileDocumentForSingleTargetDevice
IBDocument
IBDocumentAutolayoutManager
IBDocumentCompiler
IBFilesOwner
IBFirstResponder
IBMemberConfiguration
IBMessageChannelErrorDomain
IBPlatformToolFailureException
IBPlatformToolFailureHandler
IBProxyObject
IBScaleFactorDeviceTypeDescription
IBSimDeviceTypeiPad
IBSimulatorToolCoreSimulatorCLIExecutionContext
IBStoryboardDocumentCompiler
IBStoryboardSceneCompilationGroup
IBUIView
IBUIViewAutolayoutGuide
IBUnderlyingError
IBWithAutoInvalidationPool
```

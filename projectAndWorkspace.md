# Project File Format

* [blog post](http://www.monobjc.net/xcode-project-file-format.html)
* [blog post](https://michele.io/the-project-file-part-1/)

## Object Graph

At it’s heart, this file is an object graph. All of these objects correspond
with some sort of action you do in Xcode. This is the master list of files,
target composition, build settings, etc. Each item is referenced by a UID.

One of the most important things to learn about the project file is that these
UIDs must not be changed. They need to be consistent within the file, otherwise
Xcode cannot open your project. Conversely, if there are extra, unused
references, Xcode doesn’t care.

Traversing the graph is pretty simple. It’s just a matter of picking a UID and
finding it elsewhere in the document. There are a number of intermediary objects
to go through to find a particular target that contains a particular file, the
files in a build phase etc.

### Classes

```
PBX AggregateTarget
PBX BuildRule
PBX ContainerItemProxy
PBX CopyFilesBuildPhase
PBX FileReference
PBX FrameworksBuildPhase
PBX Group
PBX HeadersBuildPhase
PBX LegacyTarget
PBX NativeTarget
PBX Project
PBX ReferenceProxy
PBX RezBuildPhase
PBX ShellScriptBuildPhase
PBX SourcesBuildPhase
PBX TargetDependency
PBX VariantGroup
XCBuildConfiguration
XCConfigurationList
XCVersionGroup
```

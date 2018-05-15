# `FileManager`

## iOS App directory structure
```
Documents   # read-write
Library
SystemData
tmp         # read-write
```

### sources
* [NSHipster](http://nshipster.com/nstemporarydirectory/)
* [SO](https://stackoverflow.com/questions/11897825/ios-temporary-folder-location)
* [Apple](https://developer.apple.com/library/content/documentation/FileManagement/Conceptual/FileSystemProgrammingGuide/FileSystemOverview/FileSystemOverview.html)
* [blog](https://medium.com/@victor.pavlychko/managing-temporary-files-in-swift-b076e1444c76)
* [blog](https://www.techotopia.com/index.php/Working_with_Directories_in_Swift_on_iOS_8)


## temp directories
Data with short-life time can be stored in the tmp directory of your
application. In this case, use of `NSTemporaryDirectory()` is possible to get the
`tmp` directory. Check this link for additional help.

* better way
```swift
FileManager.default.temporaryDirectory
```


## Applications Documents Directory
from [here](https://www.techotopia.com/index.php/Working_with_Directories_in_Swift_on_iOS_8)

* each application is restricted in terms of where it can store data on the
file system of the device.
* iOS achieves this by allowing applications to read
and write only to their own `Documents` and `tmp` directories.
* Within these two directories the corresponding application can create files and also
sub-directories to any required level of depth.
* This area constitutes the application’s sandbox and the application cannot usually create or modify files or directories outside of these directories unless using the `UIDocumentPickerViewController` class.

## 3 main classes
### `FileManager`
The `FileManager` class can be used to perform basic file and directory
operations such as:
* creating,
* moving,
* reading and
* writing files
* and reading and setting file attributes.

In addition, this class provides methods for, amongst other tasks,
* identifying the current working directory,
* changing to a new directory,
* creating directories and listing the contents of a directory.

### `FileHandle`
The `FileHandle` class is provided for performing lower level operations on
files, such as seeking to a specific position in a file and reading and writing
a file's contents by a specified number of byte chunks and appending data to an
existing file.


### `Data`
The `Data` class provides a useful storage buffer into which the contents of a file may be read, or from which dynamically stored data may be written to a file.

## Identifying the Documents Directory
* Each iOS application on a device has its own private `Documents` and `tmp`
directories into which it is permitted to read and write data.

* the
location of these directories is different for each application the only way to
find the correct path is to ask iOS.

* the exact location will also
differ depending on whether the application is running on a physical iPhone or
iPad device or in the iOS Simulator.

* The `Documents` directory for an application
may be identified by making a call to a file manager method named `urls(for:)`,

* passing through an argument (in this case `.documentDirectory`) indicating that we
require the path to the Documents directory.

* The `.userDomainMask` argument
indicates to the `urls(for:)` method that we are looking for the `Documents`
directory located in the application’s `home` directory. The method returns an
object in the form of an array containing the results of the request. We can,
therefore, obtain the path to the current application’s `Documents` directory as
follows:



```swift
let filemgr = FileManager.default
let dirPaths = filemgr.urls(for: .documentDirectory, in: .userDomainMask)
let docsDir = dirPaths[0].path
```

```
# in simulator
/Users/
<user name>/Library/Developer/CoreSimulator/Devices/
<device id>/data/Containers/Data/Application/
<app id>/Documents
```

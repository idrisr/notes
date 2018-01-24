# file sharing through iTunes

`UIFileSharingEnabled`

`UIFileSharingEnabled` (Boolean - iOS) Specifies whether the app shares files
through iTunes. If this key is YES, the app shares files. If it is not present
or is NO, the app does not share files. Apps must put any files they want to
share with the user in their `<Application_Home>/Documents` directory, where
`<Application_Home>` is the path to the app’s home directory.

In iTunes, the user can access an app’s shared files from the File Sharing
section of the Apps tab for the selected device. From this tab, users can add
and remove files from the directory.

In iOS 11 and later, if both this key and the `LSSupportsOpeningDocumentsInPlace`
key are YES, the local file provider grants access to all the documents in the
app’s Documents directory. These documents appear in the Files app, and in a
Document Browser. Users can open and edit these document in place.

This key is supported in iOS 3.2 and later.

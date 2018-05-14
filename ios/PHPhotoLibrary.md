# `PHPhotoLibrary`

* A shared object that manages access to and changes in the user’s Photos library.

The shared `PHPhotoLibrary` object represents the entire set of assets and
collections managed by the `Photos` app, including both assets stored on the local
device and (if enabled) those stored in iCloud Photos. You use this object to
perform changes to sets of objects in the Photos library
* for example,
  * editing asset metadata or content,
  * inserting new assets, 
  * or rearranging the members of a collection.

You also use the photo library object to register for messages that
Photos sends whenever changes occur to the content or metadata of assets and
collections, and to verify that the user has authorized your app to access
Photos content.

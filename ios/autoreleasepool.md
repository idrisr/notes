# AutoRelease

http://en.swifter.tips/autoreleasepool/

* tl;dr when you want to release the reference to memory, but not just yet. you
want the caller to be able to use the object, and then you can release it.

* and this can be before the memory would go out of scope because that could be waiting too long

```swift
// for example
autoreleasepool {
  let plainConfig = Realm.Configuration(fileURL: TodoRealm.plain.url)
  let realm = try! Realm(configuration: plainConfig)
  try! realm.writeCopy(toFile: TodoRealm.encrypted.url, encryptionKey: password.sha512)

```

Note: You wrap the code in an `autoreleasepool` block to make sure that all
objects and references to your Realm are released once you’re finished copying
the Realm file.

## tl;dr
* The receiver will be inserted into a pre-created auto release pool. 
* When the pool receives a drain method, 
* the reference count of all objects in the pool will be reduced 
* by the times they appear in the pool.

`@autoreleasepool`
* compiler directive
* will be expanded to something like `NSAutoreleasePool,` with a `drain` calling at the end.
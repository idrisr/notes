# Firebase Storage

[docs](https://cloud.google.com/nodejs/docs/reference/storage/2.3.x/)

## steps for use

* create a storage reference
* upload through `StorageTask`
* observe the task


## storage reference
`gs://...`

```Swift
let url = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(UUID().uuidString).appendingPathExtension("jpg")

do {
    try data.write(to: url)
    imagePath = url
} catch let e {
    log.error(e.localizedDescription)
}
```

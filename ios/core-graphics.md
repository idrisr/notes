# `Core Graphics`

aka `Quartz`

##  `PDFContext`

```swift
// PDF context
public func UIGraphicsBeginPDFContextToFile(_ path: String, _ bounds: CGRect, _ documentInfo: [AnyHashable : Any]?) -> Bool
public func UIGraphicsBeginPDFContextToData(_ data: NSMutableData, _ bounds: CGRect, _ documentInfo: [AnyHashable : Any]?)
public func UIGraphicsEndPDFContext()
public func UIGraphicsBeginPDFPage()
public func UIGraphicsBeginPDFPageWithInfo(_ bounds: CGRect, _ pageInfo: [AnyHashable : Any]?)
public func UIGraphicsGetPDFContextBounds() -> CGRect
public func UIGraphicsSetPDFContextURLForRect(_ url: URL, _ rect: CGRect)
public func UIGraphicsAddPDFContextDestinationAtPoint(_ name: String, _ point: CGPoint)
public func UIGraphicsSetPDFContextDestinationForRect(_ name: String, _ rect: CGRect)
```

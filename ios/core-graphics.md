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

### `context`
`Quartz` modifies the results of drawing operations according to the parameters in
the current graphics state. The graphics state contains parameters that would
otherwise be taken as arguments to drawing routines. Routines that draw to a
graphics context consult the graphics state to determine how to render their
results. For example, when you call a function to set the fill color, you are
modifying a value stored in the current graphics state. Other commonly used
elements of the current graphics state include the line width, the current
position, and the text font size.

#### parameters associated with graphics state
* Current transformation matrix (CTM)
* Clipping area
* Line: width, join, cap, dash, miter limit
* Accuracy of curve estimation (flatness)
* Anti-aliasing setting
* Color: fill and stroke settings
* Alpha value (transparency)
* Rendering intent
* Color space: fill and stroke settings
* Text: font, font size, character spacing, text drawing mode
* Blend mode

## be mindful
* origin bottom left, unlike UIKit
* Quartz accomplishes device independence with a separate coordinate system—`user
space`—mapping it to the coordinate system of the output device—`device
space`—using the `current transformation matrix`, or `CTM`

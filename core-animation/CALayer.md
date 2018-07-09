# ``CALayer``

`CALayer` has a property called `contents`. This property’s type is defined as `id`,
implying that it can be any kind of object. This is true—in the sense that you
can assign any object you like to the contents property and your app will still
compile—however, in practice, if you supply anything other than a `CGImage`, then
your layer will be blank.

## `CGImage`
A bitmap image or image mask.


```objc
- (void)viewDidLoad {
[super viewDidLoad]; //load an image
UIImage *image = [UIImage imageNamed:@"Snowman.png"];

//add it directly to our view's layer
self.layerView.layer.contents = (__bridge id)image.CGImage; }
```

Although Core Foundation types behave like Cocoa objects at runtime (known as
toll-free bridging), they are not type compatible with id unless you use a
bridged cast.

### Custom Drawing

Setting the layer contents with a `CGImage` is not the only way to populate the
backing image. It is also possible to draw directly into the backing image using
Core Graphics. The `-drawRect:` method can be implemented in a `UIView` subclass to
implement custom drawing. The `-drawRect:` method has no default implementation
because a `UIView` does not require a custom backing image if it is just filled
with a solid color or if the underlying layer’s contents property contains an
existing image instance. If `UIView` detects that the `-drawRect:` method is
present, it allocates a new backing image for the view, with pixel dimensions
equal to the view size multiplied by the contentsScale. If you don’t need this
backing image, it’s a waste of memory and CPU time to create it, which is why
Apple recommends that you don’t leave an empty `-drawRect:` method in your layer
subclasses if you don’t intend to do any custom drawing.

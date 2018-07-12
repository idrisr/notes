# `CAShapeLayer`

* A layer that draws a cubic Bezier spline in its coordinate space.
* Can be used for drawing a clipping path to a `UIView`

`CAShapeLayer` is a layer subclass that draws itself using vector graphics instead
of a bitmap image. You specify attributes such as color and line thickness,
define the desired shape using a `CGPath`, and `CAShapeLayer` renders it
automatically. Of course, you could use Core Graphics to draw a path directly
into the contents of an ordinary `CALayer` (as in Chapter 2, “The Backing Image”),
but there are several advantages to using `CAShapeLayer` instead:

* It’s fast — `CAShapeLayer` uses hardware-accelerated drawing and is much faster than
using Core Graphics to draw an image.
* It’s memory efficient `CAShapeLayer` does not have to create a backing image like an
ordinary `CALayer` does, so no matter how large it gets, it won’t consume much
memory.

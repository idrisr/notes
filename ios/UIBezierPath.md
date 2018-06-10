# `UIBezierPath`

You use this class initially to specify just the geometry for your path.

Paths can define simple shapes such as
* rectangles,
* ovals,
* and arcs
* or they can define complex polygons that incorporate a mixture of straight and curved line segments.

After defining the shape, you can use additional methods of this class to render
the path in the current drawing context.

* A `UIBezierPath` object combines:
  * the geometry of a path
  * with attributes that describe the path during rendering.
* You set the geometry and attributes separately and can change them independent of one another.

All Distinct steps:
* creation,
* configuration,
* and rendering

### move

### add line

### add arc

### add curve

### add quad curve


# Bezier Curves

[under the hood](https://vimeo.com/106757336)

* When more complex shapes are needed, low order Bézier curves are patched together, producing a composite Bézier curve. A composite Bézier curve is commonly referred to as a "path" in vector graphics languages

## cubic bezier
* curves are drawn between two points
* to curve the line between the points, we use two handles, the `handle control point`
* the `handle control point` seem to magnetically pull the curve

## smooth free hand drawing


[read me](https://code.tutsplus.com/tutorials/smooth-freehand-drawing-on-ios--mobile-13164)

# StackViews

![img](../images/stackview.png)

*  uses the intrinsic content size of its `arrangedSubviews` to size itself

## `alignment`
This property determines how the stack view lays out its arranged views
perpendicularly to its axis. The default value is `fill`. For a list of possible
values, see `UIStackViewAlignment`.

## `axis`
The axis along which the arranged views are laid out.

## `isBaselineRelativeArrangement`
A `Boolean` value that determines whether the vertical spacing between views is
measured from their baselines.

## `distribution`
This property determines how the stack view lays out its arranged views along
its axis. The default value is `fill`. For a list of possible values, see
`UIStackViewDistribution`.

* For all distributions except the `fillEqually` distribution, the stack view uses
each arranged view’s `intrinsicContentSize` property when calculating its size
along the stack’s axis.
* `fillEqually` resizes all the arranged views so they are
the same size, filling the stack view along its axis. If possible, the stack
view stretches all the arranged views to match the view with the longest
intrinsic size along the stack’s axis.


## `isLayoutMarginsRelativeArrangement`
A `Boolean` value that determines whether the stack view lays out its arranged
views relative to its layout margins.

If true, the stack view will layout its arranged views relative to its layout margins. If false, it lays out the arranged views relative to its bounds. The default is false.

## `spacing`
The distance in points between the adjacent edges of the stack view’s arranged
views.

This property defines a strict spacing between arranged views for the
`fillProportionally` distributions. It represents the minimum spacing for the
`equalSpacing` and `equalCentering` distributions. Use negative values to allow
overlap. The default value is 0.0.

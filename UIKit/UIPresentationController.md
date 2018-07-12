# `UIPresentationController`

* from [here](https://developer.apple.com/documentation/uikit/uipresentationcontroller)

An object that manages the transition animations and the presentation of view controllers onscreen.


## ``UIPopoverController``
Important: `UIPopoverController` is deprecated in iOS 9. In iOS 9 and later, a popover is implemented as a `UIViewController` presentation. To create a popover, use an instance of `UIPopoverPresentationController` and specify the popover style.

## `UIPopoverPresentationController`
## `UIPopoverPresentationControllerDelegate`
## `UIAdaptivePresentationControllerDelegate`

## miscellany
```
# interesting private class
_UIFullscreenPresentationController
+ <UINavigationController>, state: appeared, view: <UILayoutContainerView>, presented with: <_UIFullscreenPresentationController>
|    | <Target.ASDFViewController>, state: disappeared, view: <UIView> not in the window
|    | <Target.EditASDFViewController>, state: appeared, view: <UIView>

```

----
# From WWDC 228

* `animator` objects in ios7
* `uipresentationcontroller` in ios8
* works in sync with the `animator`
* takes some of the work off of the `animator`

* chrome - like the background vc
  * (computing, graphical user interface) The basic structural elements used in a graphical user interface, such as window frames and scroll bars, as opposed to the content.

* content - like the foreground vc
* presentation controller can animate along with the animator
* not coupled to the animator or the transitioning delegate
* does the positioning and chrome
* drives adaptation

* for example the `UIPopoverPresentationController` manages whether it's a popover or full screen based on traits

## `UIContentContainer`
* coordinate between presentation controllers and its presenting and presented


## The Presentation Process
The presentation process managed by a presentation controller is divided into three phases:

### presentation phase
involves moving the new view controller onscreen through a series of transition animations.

### management phase
involves responding to environment changes (such as device rotations) while the new view controller is onscreen.

### dismissal phase
involves moving the new view controller off screen through a series of transition animations

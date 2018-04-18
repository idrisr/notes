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

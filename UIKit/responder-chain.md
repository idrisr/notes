  # Responder Chain


  from [here](https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/understanding_event_handling_responders_and_the_responder_chain)



```objc
# stack trace when an outlet isnt hooked up
# notice like 3, responder does not recognize
0   CoreFoundation                      __exceptionPreprocess + 294
1   libobjc.A.dylib                     objc_exception_throw + 48
2   CoreFoundation                      -[NSObject(NSObject) doesNotRecognizeSelector:] + 132
3   UIKit                               -[UIResponder doesNotRecognizeSelector:] + 295
4   CoreFoundation                      ___forwarding___ + 1432
5   CoreFoundation                      _CF_forwarding_prep_0 + 120
6   UIKit                               -[UIApplication sendAction:to:from:forEvent:] + 83
7   UIKit                               -[UIControl sendAction:to:forEvent:] + 67
8   UIKit                               -[UIControl _sendActionsForEvents:withEvent:] + 450
9   UIKit                               -[UIControl touchesEnded:withEvent:] + 580
10  UIKit                               -[UIWindow _sendTouchesForEvent:] + 2729
11  UIKit                               -[UIWindow sendEvent:] + 4086
12  UIKit                               -[UIApplication sendEvent:] + 35
```

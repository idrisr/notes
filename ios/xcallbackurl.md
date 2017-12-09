# xcallbackurl

from [here](http://x-callback-url.com/)

The `x-callback-url` specification is intended to standardize the use of URLs and
registered URL schemes for inter-app communication and messaging on Apple’s iOS
platforms.

## structure
```bash
[scheme]://[host]/[action]?[x-callback parameters]&[action parameters]
```

### parameters
`x-source` : The friendly name of the source app calling the action. If the action
in the target app requires user interface elements, it may be necessary to
identify to the user the app requesting the action.

`x-success` : If the action in the target method is intended to return a result to
the source app, the x-callback parameter should be included and provide a URL to
open to return to the source app. On completion of the action, the target app
will open this URL, possibly with additional parameters tacked on to return a
result to the source app. If x-success is not provided, it is assumed that the
user will stay in the target app on successful completion of the action.

`x-error` : URL to open if the requested action generates an error in the target
app. This URL will be open with at least the parameters
“errorCode=code&errorMessage=message”. If x-error is not present, and a error
occurs, it is assumed the target app will report the failure to the user and
remain in the target app.

`x-cancel` : URL to open if the requested action is cancelled by the user. In the
case where the target app offer the user the option to “cancel” the requested
action, without a success or error result, this the the URL that should be
opened to return the user to the source app.

continue [here](http://x-callback-url.com/examples/)

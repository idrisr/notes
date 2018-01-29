# Entitlements

from [here](https://developer.apple.com/library/content/documentation/Miscellaneous/Reference/EntitlementKeyReference/Chapters/AboutEntitlements.html)

* Entitlements confer specific capabilities or security permissions to your iOS or macOS app.

You can set many entitlements:
* using the Summary tab of the Xcode target editor.
* Other entitlements require editing a target’s entitlements property list file.
* Finally, a few entitlements are inherited from the iOS provisioning profile used to run the app.

## checking entitlements
from [here](https://emm.how/t/how-to-check-existing-app-entitlements-of-an-ios-app/75)
```
# check the entitlements of the app
codesign -d --entitlements - ayourapp.app/yourapp

# check the entitlements of the provisioning profile
security cms -D -i "Payload/YourApp.app/embedded.mobileprovision"

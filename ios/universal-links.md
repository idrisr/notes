# Universal Links

from [here](https://developer.apple.com/library/content/documentation/General/Conceptual/AppSearch/UniversalLinks.html)

When you support universal links, iOS users can tap a link to your website and be redirected to your installed app without going through Safari. If your app isn’t installed, tapping a link to your website opens your website in Safari.

# steps
1. Create an `apple-app-site-association` file that contains JSON data about the URLs that your app can handle.

2. Upload the `apple-app-site-association` file to your HTTPS web server. You can place the file at the root of your server or in the `.well-known` subdirectory.

3. Prepare your app to handle universal links.

4. add app entitlement `com.apple.developer.associated-domains`

5. update the provisioning profile for Associated Domains

## sendgrid
[sendgrip universal links](https://sendgrid.com/docs/Classroom/Build/Add_Content/universal_links.html)

## debugging
http://building.usebutton.com/debugging/ios/deep-linking/links/universal-links/2016/03/31/debugging-universal-links/

## notes
* iOS downloads the `apple-app-site-association` at app install and then caches the result. To get a new one, you need to delete and reinstall the app
* the instructions say `apple-app-site-association` should be served with `content-type` `application/json`, but it's working with `content-type` `octet-stream`

# Universal Links

from [here](https://developer.apple.com/library/content/documentation/General/Conceptual/AppSearch/UniversalLinks.html)

When you support universal links, iOS users can tap a link to your website and get seamlessly redirected to your installed app without going through Safari. If your app isn’t installed, tapping a link to your website opens your website in Safari.

# steps
1. Create an `apple-app-site-association` file that contains JSON data about the URLs that your app can handle.

2. Upload the `apple-app-site-association` file to your HTTPS web server. You can place the file at the root of your server or in the `.well-known` subdirectory.

3. Prepare your app to handle universal links.

# establish trust between server and app

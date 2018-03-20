# Carthage

[read me](https://github.com/Carthage/Carthage)

it'll clone the source, and then build the framework with `xcodebuild.` It's up to you to integrate the framework with your project.

### pull down the source
```bash
carthage update
```

---
1. Create a `Cartfile` that lists the frameworks you’d like to use in your project.
1. Run `Carthage`, which fetches and builds each framework you’ve listed.
1. Drag the built `.framework` binaries into your application’s Xcode project.

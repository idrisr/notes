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


```
Available commands:

   archive           Archives built frameworks into a zip that Carthage can use
   bootstrap         Check out and build the project's dependencies
   build             Build the project's dependencies
   checkout          Check out the project's dependencies
   copy-frameworks   In a Run Script build phase, copies each framework specified by a SCRIPT_INPUT_FILE and/or SCRIPT_INPUT_FILE_LIST environment variables into the built app bundle
   fetch             Clones or fetches a Git repository ahead of time
   help              Display general or command-specific help
   outdated          Check for compatible updates to the project's dependencies
   update            Update and rebuild the project's dependencies
   validate          Validate that the versions in Cartfile.resolved are compatible with the Cartfile requirements
   version           Display the current version of Carthage
```
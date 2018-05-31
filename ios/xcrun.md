# XCRun

## video of simulator
* from [here](https://stackoverflow.com/questions/25797990/capture-ios-simulator-video-for-app-preview)
* [awesome source - read me](https://medium.com/flawless-app-stories/simulator-on-steroids-c12774ca6b)

```bash
xcrun simctl io booted recordVideo myMovie.mov
```

```bash
# open a file from the booted simulator
  cd $(xcrun simctl get_app_container booted com.mybundle.bundle data)
open $(find . -iname "output.pdf")
```

# UI Testing


## UI Element Queries

`class XCUIElementQuery`
A query for locating UI elements.

protocol XCUIElementTypeQueryProvider
Provides ready-made queries for locating descendant UI elements.

## UI Elements

`class XCUIElement`
A UI element in an application.

`protocol XCUIElementAttributes`
Attributes exposed by UI elements.

`class XCUICoordinate`
A location on screen relative to some UI element.


## Application Lifecycle

`class XCUIApplication`
A proxy for an application that can be launched and terminated.

## Screenshots

`class XCUIScreen`
A physical screen attached to a device.

`class XCUIScreenshot`
A captured image of a screen, app, or UI element state.

`protocol XCUIScreenshotProviding`
A type that can provide a screenshot of its current UI state.

## Device Simulation

`class XCUIDevice`
Simulates physical buttons, device orientation, and Siri interaction for an iOS device.

`class XCUISiriService`
Simulates a device's Siri interface.

## Remote Control Simulation

`class XCUIRemote`
Simulates interaction with a physical remote control.

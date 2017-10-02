# Precondition

Checks a necessary condition before proceeding. 

* in a debug mode it'll print the error if condition not satisfied and put you in a debugger state
* in release it'll crash and burn

```swift
    /// Checks a necessary condition for making forward progress.
    ///
    /// Use this function to detect conditions that must prevent the program from
    /// proceeding, even in shipping code.
    ///
    /// * In playgrounds and `-Onone` builds (the default for Xcode's Debug
    ///   configuration): If `condition` evaluates to `false`, stop program
    ///   execution in a debuggable state after printing `message`.
    ///
    /// * In `-O` builds (the default for Xcode's Release configuration): If
    ///   `condition` evaluates to `false`, stop program execution.
    ///
    /// * In `-Ounchecked` builds, `condition` is not evaluated, but the optimizer
    ///   may assume that it *always* evaluates to `true`. Failure to satisfy that
    ///   assumption is a serious programming error.
    ///
    /// - Parameters:
    ///   - condition: The condition to test. `condition` is not evaluated in
    ///     `-Ounchecked` builds.
    ///   - message: A string to print if `condition` is evaluated to `false` in a
    ///     playground or `-Onone` build. The default is an empty string.
    ///   - file: The file name to print with `message` if the precondition fails.
    ///     The default is the file where `precondition(_:_:file:line:)` is
    ///     called.
    ///   - line: The line number to print along with `message` if the assertion
    ///     fails. The default is the line number where
    ///     `precondition(_:_:file:line:)` is called.
    public func precondition(_ condition: @autoclosure () -> Bool, _ message: @autoclosure () -> String = default, file: StaticString = #file, line: UInt = #line)
```

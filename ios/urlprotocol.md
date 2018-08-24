# URLProtocol

* http://swiftandpainless.com/an-easy-way-to-stub-nsurlsession/

* abstract class

Apps never need to instantiate an `NSURLProtocol` subclass directly. When a
download starts, the system creates the appropriate protocol object to handle
the corresponding URL request. All you have to do is define your protocol class
and call the `registerClass(_:)` class method during your app’s launch time so
that the system is aware of your protocol.

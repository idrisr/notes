# `UIActivity`

An abstract class that you subclass to implement app-specific services.

You should subclass `UIActivity` only if you want to provide custom services to
the user. A service takes data that is passed to it, does something to that
data, and returns the results. For example, a social media service might take
whatever text, images, or other content is provided to it and post them to the
user’s account. Activity objects are used in conjunction with a
`UIActivityViewController` object, which is responsible for presenting services to
the user.

The system already provides support for many standard services and makes them
available through the `UIActivityViewController` object. For example, the standard
activity view controller supports emailing data, posting items to one of the
user’s social media accounts, and several other options. You do not have to
provide custom services for any of the built-in types.

# `CAAction`

An interface that allows objects to respond to actions triggered by a `CALayer` change.

When queried with an action identifier:
* a key path,
* an external action name,
* or a predefined action identifier)

a layer returns the appropriate action object – which must implement the `CAAction`
protocol–and sends it a `run(forKey:object:arguments:)` message.

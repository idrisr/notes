# Managing Complexity

Andy Matuschak talk [here](https://academy.realm.io/posts/andy-matuschak-controlling-complexity/)

* controlling complexity in swift
* change and complexity are enemies
* complexity makes everything hard to change

# focusing our paths
* control flow
* how many ways can this execute
* focusing our dependencies
* how many other components might this be communicating with
* focusing our effects, what effects will it have on the rest of the system
* focusing our thought

# the values of values
* copied on assignments

# intuition
## objects are like objects
* intuition - transmitting a name, hook up the label to the representation
* like passing names around the system
* tell you about Fido, the label Fido makes you map it to a representation
## values
* values are like data
* like passing you a spreadsheet, then going home and changing my copy
* values are simpler

# The 3 I's, value of values
## inert
* stores data
* exposes method on the data
* controller by one owner of the data, the value type itself

# isolated
* reference types create implicit dependencies

# interchangable
* they have no name, other than the data itself
* doesnt matter how it was created, if it compares equal, it is equal

# The objects of Objects
* objects behave and respond
* values are dead

# State
* an identity's value at some time
* identity is a snapshot of some sequence of value

* `value`: inert data
  * drawing
* `identity`: `value`s related in time
  * drawing > drawing > drawing > drawing
* `state`: an `identity`s value at some time
  * drawing > drawing > drawing > DRAWING

# Objects  
* represent `identity`
* manage `state` representation
* perform side effects

# Everything in its place
* object layer
  * interact with UIKit
  * thin veneer
  * consume events, consult the value layer
* value layer
* separate logic from action
* functional core, imperative shell

# further reading
* boundaries, Gary Bernhardt
* are we there yet? - Rich Hickey, simple made easy
* SICP - Abelson & Sussman
* Enemy of the State - Justin Spahr-Summers
* Mosely and Mark - "out of the tar pit"

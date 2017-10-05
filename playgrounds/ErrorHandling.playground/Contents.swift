/*:

# Swift Error Handling

In swift errors are represented by values of types that conform to the `Error` protocol. 
Swift enums work great for error handling.

* Throwing

* Catching

* Propagating

* Manipulating

*/

enum VendingMachineError: Error {
case invalidSelection
case insufficientFunds(coinsNeeded: Int)
case outOfStock
}
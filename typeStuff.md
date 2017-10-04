

## Type Constraints

Use protocol composition or class restrictions. If you want to do a protocol and class restriction then you'll have to use both spots

    func myFunc<A: SomeClass>(_ a: A) -> A where A: SomeProtocol and SomeOtherProtocol { }


### Constrain type in where
### Costrain type in declaration

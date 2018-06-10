# Swift generics
aka parametric polymorphism


### Issue


Protocol `MyProtocol` can only be used as a generic constraint because it has
`Self` or associated type requirements.

### Issue
Type 'Self' constrained to non-protocol, non-class type 'String'
This is an expected behaviour considering struct are not meant to be inherited which : notation stands for.

## customization points
* add a requirement to the protocol
* you can override it if you want, ie the customization point
* if you dont, you can rely on the default implementation in the extension

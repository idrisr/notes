# Swift generics


### Issue


Protocol `MyProtocol` can only be used as a generic constraint because it has
`Self` or associated type requirements.

### Issue
Type 'Self' constrained to non-protocol, non-class type 'String'
This is an expected behaviour considering struct are not meant to be inherited which : notation stands for.

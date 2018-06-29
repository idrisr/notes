# Liskov Substitution Principle

* about a type and its supertype
* subtype is a strong relationship with its supertype

```
class A
class B: A
f1(A)
# then
f1(B) # should work just fine
```

same idea applies to `protocol`s

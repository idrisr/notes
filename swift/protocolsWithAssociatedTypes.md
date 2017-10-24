# Protocols with AssociatedType

You select the actual type when you adopt the protocol, not when you
instantiate the class/struct. It leaves control over which types to select in a
different set of hands.

# Basics

from [here](http://www.russbishop.net/swift-associated-types)

Unlike classes, structs, and enums, protocols don't support generic type parameters. Instead they support abstract type members; in Swift terminology Associated Types. Though you can accomplish a lot with either system, there are some benefits to associated types (and currently some drawbacks).

An associated type in a protocol says "I don't know what exact type this is; some concrete class/struct/enum that adopts me will fill in the details".

"Great!" you cry, "so how is that different from a type parameter?" Good question. Type parameters force everyone to know the types involved and specify them repeatedly (when you compose with them it can also lead to an explosion in the number of type parameters). They're part of the public interface. The code that uses the concrete thing (class/struct/enum) makes the decision about what types to select.

By contrast an associated type is part of the implementation detail. It's hidden, just like a class can hide its internal ivars. The abstract type member is for the concrete thing (class/struct/enum) to provide later. You select the actual type when you adopt the protocol, not when you instantiate the class/struct. It leaves control over which types to select in a different set of hands.

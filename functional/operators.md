---
title: Operators
---

# Operators


## Pipe Forward
`|>`

```swift
func incr(a: Int) -> Int {
    return a + 1
}

incr(2) // 3
2 |> incr // 3

func |> <A, B>(a: A, f: (A) -> B) -> B {
    return f(a)
}
```

## Function Compostion
```swift
func >>> <A, B, C> 
    (f: @escaping (A) -> B, 
     g: @escaping (B) -> C))
-> (A) -> C {
    return { a in 
        g(f(a))
    }
}
```

## Effectful Composition
```swift
func >=> <A, B, C> (f: @escaping (A) -> (B, [String]),
                    g: @escaping (B) -> (C, [String])) -> (A) -> (C, [String]) {
    return { a in
    
        let (b, logs) = f(a)
        let (c, moreLogs) = g(b)
        return (c, logs + moreLogs)
    }
}
```


## `Statement` vs `Expression`

### `Statement`
* unit of code evaluated just for the net action



### `Expression`
* unit of code evaluated to get the value from the expression

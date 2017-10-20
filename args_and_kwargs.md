# python `*args` and `**kwargs`

## `*args`
positional arguments

## `**kwargs`
named arguments

```python
s1 = "yo what the {wot}"
s2 = "yo what the {}"
d = {"wot": "fuck"}

print(s1.format(**d))    // kwargs
print(s2.format("fuck")) // args
```

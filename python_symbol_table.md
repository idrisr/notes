# Python Symbol Table

from [here]

## Variables in python

So far I've been using the term "variable" liberally. Just to be on the safe
side, let's clarify what is meant by variable in Python. Formally, Python
doesn't really have variables in the sense C has. Rather, Python has symbolic
names bound to objects:

```python
aa = [1, 2, 3]
bb = aa
aa[0] = 666
```

In this code, `aa` is a name bound to a list object. `bb` is a name bound to the
same object. The third line modifies the list through `aa`, and if we print out `bb`
we'll see the modified list as well.

Now, once this is understood, I will still use the term "variable" from time to
time since it's occasionally convenient and everybody's used to it anyway.

# `xargs`

```bash
> echo '1
quote> 1
quote> 2
quote> 3' | xargs
1 1 2 3
```

takes a string of stuff with new line separators and smashes then into one line with space delimiters
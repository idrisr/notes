# Examples

## hex numbers
```bash
0[xX][0-9a-fA-F]+
```

## quoted strings

```bash
\".+\"
```

## until space
```bash
[^\s]+
```

# Concepts
## Negative lookahead

## Positive lookahead

# Metacharacters

### `.` dot
any one character

### `[...]` character class
any character listed

### `[^...]` negated character class
any character not listed

### `^` caret
position at start of the line

### `$` dollar sign
position at end of the line

### `\<` backslash less-than
the position at the start of the word

### `\<` backslash greater-than
the position at the end of the word

### `|` or, bar
matches either expression it separates

### `(...)`
used to limit scope of `|`, and other stuff

### `+` plus
one or more of the immediately-preceding item

### `*` star
try to match it as many times as possible, but it’s OK to settle for nothing if need be

# png

## check if alpha channel exists
```bash
identify -format '%[channels]' mypng.png; echo;
rgba // yes
rgb  // no
```

## remove alpha channel
```bash
export i=mypng.png
convert input.png -alpha off output.png
```

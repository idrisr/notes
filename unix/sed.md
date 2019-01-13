# `sed`

first of, `sed` is da `shit`

## Print from match to end of file
```bash
# print from empty line to end of file
# you have a http response file, print after the first blank line, ie skip the headers
sed -n -e '/^$/,$p' MyHttpResponse.txt
```

from [here](https://stackoverflow.com/questions/7103531/how-to-get-the-part-of-file-after-the-line-that-matches-grep-expression-first)
```bash
# print from `v6` to end of file
sed -n -e '/v6/,$p'
```

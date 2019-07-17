# bash tips and tricks

from [here](https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/)

read me https://zwischenzugs.com/2018/01/06/ten-things-i-wish-id-known-about-bash/

google style [guide](https://google.github.io/styleguide/shell.xml)

[parameter expansion](https://mywiki.wooledge.org/BashGuide/Parameters#Parameter_Expansion)

[wiki](https://wiki.bash-hackers.org/start)

## `1>&2`
`1` is `stdout`
`2` is `stderr`

this means redirect `stdout` to `stderr`

## `$#`
number of arguments

## `$@`
what parameters were passed

## `$?`
was last command successful

## `pipefail`
`set -o pipefail`
The bash shell normally only looks at the exit code of the last command of a
pipeline. This behavior is not ideal as it causes the -e option to only be able
to act on the exit code of a pipeline’s last command. This is where -o pipefail
comes in. This particular option sets the exit code of a pipeline to that of
the rightmost command to exit with a non-zero status, or zero if all commands
of the pipeline exit successfully.

## `set -e`
The `-e` option will cause a bash script to exit immediately when a command fails

## `set -u`
This option causes the bash shell to treat unset variables as an error and exit
immediately. This brings us much closer to the behavior of higher-level
languages.

## `set -x`
The `-x` option causes bash to print each command before executing it. This can
be of great help when you have to try and debug a bash script failure through
its logs. Note that arguments get expanded before a command gets printed. This
causes our logs to display the actual argument values at the time of execution!

## `set -f`
A `set -f` command disables globbing

## globbing
if you don't double quote your variables, you're going to get glob expansion.

from [here](http://tldp.org/LDP/abs/html/globbingref.html)

Bash does carry out filename expansion -- a process known as globbing --
but this does not use the standard RE set. Instead, globbing recognizes and
expands wild cards. Globbing interprets the standard wild card characters
-- * and ?, character lists in square brackets, and certain other special
characters (such as ^ for negating the sense of a match). There are important
limitations on wild card characters in globbing, however. Strings containing *
will not match filenames that start with a dot, as, for example, .bashrc.
Likewise, the ? has a different meaning in globbing than as part of an RE.

## word splitting
Double quoting an expansion suppresses word splitting, except in the special
cases of `"$@"` and `"${array[@]}":`

## expansion

The shell's parser performs several operations on your commands before finally
executing them. Understanding how your original command will be transformed by
the shell is of paramount importance in writing robust scripts. From the bash
man page:

The order of expansions is:
* [brace expansion](https://www.gnu.org/software/bash/manual/html_node/Brace-Expansion.html)



* tilde expansion,
* parameter, variable and arithmetic expansion and
* command substitution (done in a left-to-right fashion),
* word splitting,
* and pathname expansion.

## `test`
more part of `test` than `bash`. do a `man test`

```shell
NAME
     test, [ -- condition evaluation utility

SYNOPSIS
     test expression
     [ expression ]
```

### no `if`
can do shit like this
```bash
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```

### `-n` non zero length string
`if [ -n $1 ]`

-n string     True if the length of string is nonzero.

### `-d` directory exists
-d file       True if file exists and is a directory.

### `-a` and
```shell
if [ -d $dir -a -z "$1" ]; then
```

if directory exists and the first argument is zero length

#### `command`

```shell
if command -v most > /dev/null 2>&1; then
    export PAGER="most"
fi
```

### `read`
http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_08_02.html

The `read` built-in command is the counterpart of the `echo` and `printf` commands.
The syntax of the `read` command is as follows:

`read [options] NAME1 NAME2 ... NAMEN`

### `let`
`let` is very similar to `((` - the only difference being let is a builtin
(simple
command), and `((` is a compound command. The arguments to `let` are therefore
subject to all the same expansions and substitutions as any other simple command -
requiring proper quoting and escaping - whereas the contents of `((` aren't
subject to word-splitting or pathname expansion (almost never desirable for
arithmetic). For this reason, the arithmetic compound command should generally
be preferred over `let`

### arrays
```shell
#!/bin/bash
# declare an array called array and define 3 vales
array=( one two three )
for i in "${array[@]}"
do
	echo $i
done
```


### `continue` built-in

The `continue` statement resumes iteration of an enclosing `for`, `while`, `until` or
`select` loop.

When used in a `for` loop, the controlling variable takes on the value of the next
element in the list. When used in a `while` or `until` construct, on the other hand,
execution resumes with `TEST-COMMAND` at the top of the loop.

### `wait`

`wait` makes the shell `wait` for the given subprocess. e.g.:

```shell
workhard &
[1] 27408
workharder &
[2] 27409
wait %1 %2
```

delays the shell until both of the subprocesses have finished.

`=~`
```shell
if [[ $REPLY =~ ^[Yy]$ ]];then
    return 1
fi
```

The leading `~` is actually part of the operator `=~` which performs a regular
expression match of the string to its left to the expression pattern on its
right.

`[[ "string" =~ pattern ]]`
Note that the string should be quoted, and that the regular expression shouldn't
be quoted.

## case

```bash
case $space in
[1-6]*)
  Message="All is quiet."
  ;;
[7-8]*)
  Message="Start thinking about cleaning out some stuff.  There's a partition that is $space % full."
  ;;
9[1-8])
  Message="Better hurry with that new disk...  One partition is $space % full."
  ;;
99)
  Message="I'm drowning here!  There's a partition at $space %!"
  ;;
*)
  Message="I seem to be running with an nonexistent amount of disk space..."
  ;;
esac
```

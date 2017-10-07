# bash tips and tricks

from [here](https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/)

## `pipefail`
set -o pipefail
The bash shell normally only looks at the exit code of the last command of a
pipeline. This behavior is not ideal as it causes the -e option to only be able
to act on the exit code of a pipeline’s last command. This is where -o pipefail
comes in. This particular option sets the exit code of a pipeline to that of
the rightmost command to exit with a non-zero status, or zero if all commands
of the pipeline exit successfully.

## `set e`
The -e option will cause a bash script to exit immediately when a command fails

## `set -u`
This option causes the bash shell to treat unset variables as an error and exit
immediately. This brings us much closer to the behavior of higher-level
languages.

## `set -x`
The -x option causes bash to print each command before executing it. This can
be of great help when you have to try and debug a bash script failure through
its logs. Note that arguments get expanded before a command gets printed. This
causes our logs to display the actual argument values at the time of execution!

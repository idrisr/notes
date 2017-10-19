# `.vimrc` + `vimscript`

## `set`
`set` is for setting options

## `let`
`let` is for assigning variables with values

## `statusline`

## `normal mode`

## `insert mode`

## `visual mode`

## `command mode`
Command-line mode

`<ctrl f>` brings up the command history in a vim buffer and can use vim normal
mappings to do what you want

## `text object`

## `internal variables`

`:help internal-variables`

`let g:...`, the `g:` defines the variable's scope.

    buffer-variable    b:     Local to the current buffer.
    window-variable    w:     Local to the current window.
    tabpage-variable   t:     Local to the current tab page.
    global-variable    g:     Global.
    local-variable     l:     Local to a function.
    script-variable    s:     Local to a :source'ed Vim script.
    function-argument  a:     Function argument (only inside a function).
    vim-variable       v:     Global, predefined by Vim.

## `statusline`
the status line at the bottom of the window

## `completeopt`
    A comma separated list of options for Insert mode completion ins-completion.

## Jedi - python autocompletion
    5. Mappings                             jedi-vim-keybindings
    5.1. Start completion               g:jedi#completions_command <Ctrl-Space>
    5.2. Go to definition               g:jedi#goto_command <leader>d
    5.3. Go to assignment               g:jedi#goto_assignments_command <leader>g
    5.4  Go to definition (deprecated)  g:jedi#goto_definitions_command
    5.5. Show documentation             g:jedi#documentation_command <K>
    5.6. Rename variables               g:jedi#rename_command <leader>r
    5.7. Show name usages               g:jedi#usages_command <leader>n
    5.8. Open module by name            :Pyimport

## Python stuff

* use linters through ale plugin
* definition jumping - jedi


## loclist vs quickfix

The location list is local to the current window so you can have as many
location lists as windows: 30 windows? No problem, here are your 30 concurrent
location lists.

The quickfix list is global so you can't have more than one available at a time.
There are commands that allow you to replace the current quickfix list with a
previous one but you can't have two concurrent quickfix lists.

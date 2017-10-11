# `.vimrc` + `vimscript`

## `set`
`set` is for setting options

## `let`
`let` is for assigning variables with values

## `statusline`

## `normal mode`

## `insert mode`

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

* use linters through syntastic plugin
* todo - code completion and definition jumping?

## `jumplist`

Jumps are remembered in a jump list.  With the `CTRL-O` and `CTRL-I` command you can
go to cursor positions before older jumps, and back again.  Thus you can move up
and down the list.  There is a separate jump list for each window. The maximum
number of entries is fixed at 100.

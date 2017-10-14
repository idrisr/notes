# tmux

[todo]https://robots.thoughtbot.com/a-tmux-crash-course

[todo] check out tmuxinator

tmux [course](https://thoughtbot.com/upcase/tmux?utm_campaign=ad&utm_medium=referral&utm_source=robots.thoughtbot.com&utm_term=https://robots.thoughtbot.com/a-tmux-crash-course)

* auto start / config on iterm launch
* change color when sshing elsewhere
* active window background
* fix clipboard shit
* auto renumber

## iterm

![iterm](https://i.imgur.com/lsJwZ5b.png)

## the tao of tmux

# config

* `bind-key`
* `set`
* `set-window-option`
* `bind`
* `bind-key -T copy-mode`
* `bind-key -T copy-mode-vi`
* `bind-key -r -T prefix`

```
bind-key [-cnr] [-t key-table] key command [arguments] (alias: bind)

The -r flag indicates this key may repeat, see the repeat-time option.

```

## shortcuts
* `Prefix + (` - Switch the attached client to the previous session.
* `Prefix + )` - Switch the attached client to the next session.
* `Prefix + L` - Switch the attached client back to the last session.
* `Prefix + s` - Select a new session for the attached client
* `Prefix + f` - search for window by name
* `Prefix + z` - toggle zoom in on pane

In tmux, a session is displayed on screen by a client and all sessions are
managed by a single server. The server and each client are separate processes
which communicate through a socket in `/tmp`.

## modes

* control-mode [todo]
* mouse-mode
* others?


### mouse-mode

in the latest versions of tmux, to turn on mouse mode all you need is

`set -g mouse on`. this lets you scroll normally through panes, resize panes,
and switch panes using the mouse.

### scripting
`bind-key c command-prompt -p "Name of new window: " "new-window -n '%%'"`
the `%%` is replaced by whatever is supplied in the prompt

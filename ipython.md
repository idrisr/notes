# IPython

## vim mode
from [here](http://koo.fi/blog/2016/08/04/enable-vi-editing-mode-in-ipython-5/)
```shell
ipython profile create
echo "c.TerminalInteractiveShell.editing_mode = 'vi'"  >> ~/.ipython/profile_default/ipython_config.py
```

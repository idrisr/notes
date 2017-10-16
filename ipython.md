# IPython

## vim mode
from [here](http://koo.fi/blog/2016/08/04/enable-vi-editing-mode-in-ipython-5/)
```shell
ipython profile create
echo "c.TerminalInteractiveShell.editing_mode = 'vi'"  >> ~/.ipython/profile_default/ipython_config.py
```

```python
Requirement already up-to-date: enum34; python_version == "2.7" in
/usr/local/lib/python2.7/site-packages (from traitlets>=4.2->ipython)
```

## 2 vs 3

from [here](https://gist.github.com/rossov/10438571)
### install 3

```shell
# Update brew
brew update
brew upgrade

# Install Python 3
brew install python3

# Install ipython
pip3 install ipython

# Install extra modules to run ipython notebool
pip3 install pyzmq
pip3 install jinja2
pip3 install tornado

# Run notebook
ipython3 notebook
```

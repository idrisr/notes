# git hooks

from - http://githooks.com/

## hook source control

Commit your hook script (say `pre-commit.sh`) at the root of your project and
include the installation instructions in your README/documentation to encourage
all developers use it.

Installation is nothing more than:

```shell
ln -s ../../pre-commit.sh .git/hooks/pre-commit
```

### tips

* stash unstaged changes before running tests
* run test suite before each commit
* Search yo.. code for debugging code
* Skip the pre-commit hook sometimes

`git commit --no-verify`


#### `applypatch-msg`
#### `pre-applypatch`
#### `post-applypatch`
#### `pre-commit`
#### `prepare-commit-msg`
#### `commit-msg`
#### `post-commit`
#### `pre-rebase`
#### `post-checkout`
#### `post-merge`
#### `pre-receive`
#### `update`
#### `post-receive`
#### `post-update`
#### `pre-auto-gc`
#### `post-rewrite`
#### `pre-push`



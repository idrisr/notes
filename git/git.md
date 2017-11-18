## Hooks

### Client side


### Server side



### `push`

```shell
Counting objects: 8, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (8/8), done.
Writing objects: 100% (8/8), 2.92 KiB | 748.00 KiB/s, done.
Total 8 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To github.com:user/repo.git
   001c8a5..647d7b7  master -> master
```

#### counting objects
todo
#### compressing objects
todo
#### writing objects
todo

## Under the Hood
from [here](https://wildlyinaccurate.com/a-hackers-guide-to-git/)
todo - continue at `Tree Objects`

* `Blobs`, which are the most basic data type in Git. Essentially, a blob is just a bunch of bytes; usually a binary representation of a file.
* `Tree objects`, which are a bit like directories. Tree objects can contain pointers to blobs and other tree objects.
* `Commit objects`, which point to a single tree object, and contain some metadata including the commit author and any parent commits.
* `Tag objects`, which point to a single commit object, and contain some metadata.
* `References`, which are pointers to a single object (usually a commit or tag object).

```shell
$ git init
$ ls -l .git
total 32
drwxrwxr-x 2 demo demo 4096 May 24 20:10 branches
-rw-rw-r-- 1 demo demo 92 May 24 20:10 config
-rw-rw-r-- 1 demo demo 73 May 24 20:10 description
-rw-rw-r-- 1 demo demo 23 May 24 20:10 HEAD
drwxrwxr-x 2 demo demo 4096 May 24 20:10 hooks
drwxrwxr-x 2 demo demo 4096 May 24 20:10 info
drwxrwxr-x 4 demo demo 4096 May 24 20:10 objects // good stuff
drwxrwxr-x 4 demo demo 4096 May 24 20:10 refs    // good stuff
```

# `reflog`

https://git-scm.com/docs/git-reflog

`git reflog` and you get to see all the references and can maybe find the thing
you lost in there

## git server
https://git-scm.com/book/en/v2/Git-on-the-Server-Setting-Up-the-Server

## bare versus non-bare repos
from [here](http://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/)

A bare repository created with `git init --bare` is for… sharing. If you are
collaborating with a team of developers, and need a place to share changes to a
repo, then you will want to create a bare repository in centralized place where
all users can push their changes (often the easy choice is github.com). Because
git is a distributed version control system, no one will directly edit files in
the shared centralized repository. Instead developers will clone the shared bare
repo, make changes locally in their working copies of the repo, then push back
to the shared bare repo to make their changes available to other users.

### rebase
https://git-scm.com/book/id/v2/Git-Tools-Rewriting-History

For example, if you want to change the last three commit messages, or any of the
commit messages in that group, you supply as an argument to `git rebase -i` the
parent of the last commit you want to edit, which is `HEAD~2^` or `HEAD~3`. It may
be easier to remember the `~3` because you’re trying to edit the last three
commits; but keep in mind that you’re actually designating four commits ago, the
parent of the last commit you want to edit:

```bash
$ git rebase -i HEAD~3
```

to edit the commit message, then use `r` for `reword` which will move you
through each commit you picked and let you edit the message one at a time.

remember to only do this when you have not already pushed

### reset
https://git-scm.com/docs/git-reset

#### --soft
Does not touch the index file or the working tree at all (but resets the head to
<commit>, just like all modes do). This leaves all your changed files "Changes
to be committed", as git status would put it.

#### --mixed
Resets the index but not the working tree (i.e., the changed files are preserved
but not marked for commit) and reports what has not been updated. This is the
default action.

If -N is specified, removed paths are marked as intent-to-add (see git-add[1]).

#### --hard
Resets the index and working tree. Any changes to tracked files in the working
tree since <commit> are discarded.

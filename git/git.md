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

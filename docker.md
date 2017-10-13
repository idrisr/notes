# Docker

## tag
give your image a human friendly name

## container
a running instance of an image

## image
a specific snapshot of an environment

## daemon

`dockerd` is the persistent process that manages containers. Docker uses
different binaries for the daemon and client. To run the daemon you type
`dockerd`.

To run the daemon with debug output, use `dockerd -D` or add debug: true to the
`daemon.json` file.

## start

## stop

## run
### open a shell
`docker run -ti efa47679138e /bin/bash`

## build

## manifest

## dockerfile

### `ENV`
set environment variables

`ENV FLASK_DEBUG=1`

### `CMD`

There can only be one `CMD` instruction in a Dockerfile. If you list more than one `CMD` then only the last `CMD` will take effect.

The main purpose of a `CMD` is to provide defaults for an executing container. These defaults can include an executable, or they can omit the executable, in which case you must specify an `ENTRYPOINT` instruction as well.

### `RUN`

The `RUN` instruction will execute any commands in a new layer on top of the current image and commit the results. The resulting committed image will be used for the next step in the Dockerfile.

Layering `RUN` instructions and generating commits conforms to the core concepts of Docker where commits are cheap and containers can be created from any point in an image’s history, much like source control.

Each time you `RUN`, you spawn a new container and therefore the `pwd` is `/`. Therefore state changes like `cd` as a `RUN` will have no effect.

## pull

## push

## dockerhub

Docker Hub is a cloud-based registry service which allows you to link to code
repositories, build your images and test them, stores manually pushed images,
and links to Docker Cloud so you can deploy images to your hosts. It provides a
centralized resource for container image discovery, distribution and change
management, user and team collaboration, and workflow automation throughout the
development pipeline.

* Image Repositories: Find and pull images from community and official libraries,
and manage, push to, and pull from private image libraries to which you have
access.  
* Automated Builds: Automatically create new images when you make
changes to a source code repository.  
Webhooks: A feature of Automated Builds,
* Webhooks let you trigger actions after a successful push to a repository.
* Organizations: Create work groups to manage access to image repositories.
* GitHub and Bitbucket Integration: Add the Hub and your Docker Images to your
current workflows.

## attach

The `attach` command will display the output of the `ENTRYPOINT/CMD` process.
This can appear as if the `attach` command is hung when in fact the process may
simply not be interacting with the terminal at that time.

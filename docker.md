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

## build

## manifest

## dockerfile

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

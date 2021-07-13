# Quick-Mount

## A penny for your thoughts:
So you're tried of your Mac yelling at you because openSSL is all messed up and you don't want to spend 2 hours trying to sort out that mess because you just want to run a short script...welcome to the birth scenario of Quick-Mount.

Basically just a small project to spin up a clean Ubuntu 18.04 image and mount a project on the container as a volume. Makefile is included for convenience

```
make build: Build the container

make container: Run the image with no mounted volume

make mount dir=<abs path to diriectory>: Run the container with the dir mounted as a volume

make entry: Make a stylish entry into the container

make kill: Kill the running container

make clean: Remove the image from Docker
```
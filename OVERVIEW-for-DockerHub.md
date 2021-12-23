# Docker Squoosh
This repo contains a Dockerfike for [Squoosh CLI](https://github.com/GoogleChromeLabs/squoosh/tree/dev/cli). You can find a repository of this image on GitHub at [johnfmorton/docker-squoosh-cli](https://github.com/johnfmorton/docker-squoosh-cli).

## Description

This Dockerfile contains [Squoosh CLI](https://github.com/GoogleChromeLabs/squoosh/tree/dev/cli) and defaults to using node 16. You can change the node version by altering the tag passed into the Dockerfile. (Note: Squoosh works on Node 12, 14, and 16 only.)

## Basic usage

From the command line, navigate to the directory containing the images you want to compress. Then run the following command.

```
docker run --rm -it -v `pwd`:/app johnfmorton/squoosh
```

The default command in the Dockerfile is `/bin/sh`, so you will be presented with a command prompt from within the container. You can now execute a squoosh-cli command.  For example:

```
squoosh-cli --webp auto --optimizer-butteraugli-target 1.4 *.png
```

In the command above, you will take all of the .png files in the directory and make webp files of them using the 'auto' setting passing in a [butteraugli](https://github.com/google/butteraugli) distance of 1.4, which is the default distance.

Refer to the [documentation](https://github.com/GoogleChromeLabs/squoosh/tree/dev/cli) for an exhaustive list of options.

If the options are overwhelming, try the [Squoosh GUI](https://squoosh.app/) to see what the options do to an image. Then you can copy those settings and use them via the command line.

## Alternative usage

Alternatively, you can pass in the `squoosh-cli` command along with

```
docker run --rm -it -v `pwd`:/app johnfmorton/squoosh squoosh-cli --webp auto --optimizer-butteraugli-target 1.4 *.png
```

## Using an alias

If you don't want to type that long docker command, use the method described in [Dock Life: Using Docker for All The Things!](https://nystudio107.com/blog/dock-life-using-docker-for-all-the-things).

I've got an alias in my zsh configuration file, i.e. the .zshrc file, that allows me to use `squoosh-cli` from my command line as if I had it installed on my local machine.

```
alias squoosh-cli='docker run --rm -it -v `pwd`:/app johnfmorton/squoosh squoosh-cli'
```

Then to use the command line version of Squoosh CLI, I do not need to have anything installed on my local machine besides Docker. I can run the following command on my command line and get the optimized images I expect.

```
squoosh-cli --webp auto --optimizer-butteraugli-target 1.4 *.png
```

## Windows compatibility

I don't have a Windows machine to test on, but I think you'll need to substitute `pwd` (including the ticks, which Markdown is not displaying here) above with `"${CURDIR}"`.


## Future possible additions

I have specific options I tend to reuse with Squoosh CLI. I may incorporate these into the image at some point. Currently, these options are executed through a text snippet I have on my machine.

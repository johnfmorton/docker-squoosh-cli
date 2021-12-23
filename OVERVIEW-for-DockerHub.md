# johnfmorton/squoosh

This image contains an installation of [Squoosh CLI](https://github.com/GoogleChromeLabs/squoosh/tree/dev/cli).

## Basic use

From the command line, navigate to the directory containing the images you want to compress. Then run the following command.

`docker run --rm -it -v `pwd`:/app johnfmorton/squoosh`

You will be presented with another command prompt from within the container. You can now execute a squoosh-cli command. For example:

```
squoosh-cli --wp2 auto *.png
```

Refer to the [documentation](https://github.com/GoogleChromeLabs/squoosh/tree/dev/cli) for an exhaustive list of options.


##

```
alias squoosh='docker run --rm -it -v `pwd`:/app johnfmorton/squoosh'
```

```
alias squoosh-cli='docker run --rm -it -v `pwd`:/app johnfmorton/squoosh squoosh-cli'
```


Where to file issues: https://github.com/johnfmorton/docker-squoosh-cli/issues
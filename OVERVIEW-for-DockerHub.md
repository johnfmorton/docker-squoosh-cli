# johnfmorton/squoosh

This image contains an installation of [Squoosh CLI](https://github.com/GoogleChromeLabs/squoosh/tree/dev/cli).

## Basic use

From the command line, navigate to the directory containing the images you want to compress. Then run the following command.

```
docker run --rm -it -v `pwd`:/app johnfmorton/squoosh
```

You will be presented with another command prompt from within the container. You can now execute a squoosh-cli command. For example:

```
squoosh-cli --webp auto *.png
```

Refer to the [documentation](https://github.com/GoogleChromeLabs/squoosh/tree/dev/cli) for an exhaustive list of options for Squoosh CLI.

## More information

See the GitHub repo for additional documentation on using this Dockerfile: https://github.com/johnfmorton/docker-squoosh-cli/

Where to file issues: https://github.com/johnfmorton/docker-squoosh-cli/issues

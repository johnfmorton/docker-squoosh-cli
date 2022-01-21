# Notes on the project

These are notes I have for myself regarding this project. They're not overly organized but they're here to capture my train of thought during the work process in case I need to reference them later.

---

I needed to make this image cross platform. My image was build on my M1 Mac and didn't work natively on Intel now.

Andrew said I [buildx](https://github.com/docker/buildx/) would help me solve this issue.

First, I created a builder for buildx. I also referenced [Building Multi-Arch Images for Arm and x86 with Docker Desktop](https://www.docker.com/blog/multi-arch-images/)

```
docker buildx create --name jmxBuilder
```

I then told docker to use it when running buildx:

```
docker buildx use jmxBuilder
```

I can see it by inspecting it. Note that --bootstrap isn’t needed, it just starts the build container immediately.

```
docker buildx inspect --bootstrap
```

Now I can build and push this with this command. Notice that this tags both the development version and the latest version at the same time.

```
docker buildx build --push --no-cache --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag johnfmorton/squoosh:dev --tag johnfmorton/squoosh:latest .
```

To only tag a dev version do this:

```
docker buildx build --push --no-cache --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag johnfmorton/squoosh:dev .
```

To only tag a 'latest' version do this:

```
docker buildx build --push --no-cache --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag johnfmorton/squoosh:latest .
```

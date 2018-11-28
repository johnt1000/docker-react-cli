# Supported tags and respective `Dockerfile` links

- [`2.1.1-alpine`(*create-react-app-2.1.1-alpine/Dockerfile*)](https://github.com/johnt1000/docker-react-cli/blob/create-react-app-2.1.1/Dockerfile)

# About

This container will have the items necessary to run the react-cli.

# How to use this image

## Create a `Dockerfile` in your project

```dockerfile
# Dockerfile
FROM jonatasra/react-cli

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000
```

Then, run the commands to build and run the Docker image:

```console
$ docker build -t my-react-app .
$ docker run -it --rm --name my-running-app my-react-app sh
```

Using this via docker-compose:

```dockerfile
# docker-compose.yaml
version: '3'
services:
  react:
    image: jonatasra/react-cli
    command: npm start
    volumes:
      - .:/app
    ports:
      - 3000:3000
```

# Image Variants
The react-cli images come in many flavors, each designed for a specific use case.

## `jonatasra/react-cli:<version>-alpine`

This image is based on the popular [Alpine Linux project](http://alpinelinux.org), available in [the `alpine` official image](https://hub.docker.com/_/alpine). Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

This variant is highly recommended when final image size being as small as possible is desired. The main caveat to note is that it does use [musl libc](http://www.musl-libc.org) instead of [glibc and friends](http://www.etalabs.net/compare_libcs.html), so certain software might run into issues depending on the depth of their libc requirements. However, most software doesn't have an issue with this, so this variant is usually a very safe choice. See [this Hacker News comment thread](https://news.ycombinator.com/item?id=10782897) for more discussion of the issues that might arise and some pro/con comparisons of using Alpine-based images.

To minimize image size, it's uncommon for additional related tools (such as `git` or `bash`) to be included in Alpine-based images. Using this image as a base, add the things you need in your own Dockerfile (see the [`alpine` image description](https://hub.docker.com/_/alpine/) for examples of how to install packages if you are unfamiliar).
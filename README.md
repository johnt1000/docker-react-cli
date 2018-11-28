# Supported tags and respective `Dockerfile` links

- [`2.1.1`(*2.0/Dockerfile*)](https://github.com/johnt1000/docker-react-cli/blob/2.0/Dockerfile)

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

## Create a `docker-compose` in your project

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

## `jonatasra/react-cli:<version>`

This is the defacto image. If you are unsure about what your needs are, you probably want to use
this one. It is designed to be used both as a throw away container (mount your source code and start
the container to start your app), as well as the base to build other images off of.

# License
View [license information](https://github.com/johnt1000/docker-react-cli/blob/master/LICENSE) for the software contained in this image.
# docker-flowtype

> A [Docker](https://www.docker.com/) image for [Flow](https://flowtype.org/) based on [ocaml/opam:debian-8_ocaml-4.03.0](https://github.com/ocaml/opam-dockerfiles).

## Prerequisites

Install [Docker Engine](https://docs.docker.com/engine/installation/).

## Obtaining the Docker image

### Downloading the Docker image from Docker Hub

This is the simplest and the fastest solution to get a pre-built image:

```bash
docker pull yamafaktory/docker-flowtype
```

### Building the Docker image locally

Please note that this option will take a longer time to be executed.

```bash
git clone https://github.com/yamafaktory/docker-flowtype.git
cd docker-flowtype
docker build -t yamafaktory/docker-flowtype .
```

## Running the Docker image as a container

In order to execute the **flow** static type checker in your project, you need to mount the host directory where your project is located (e.g. `/path/to/your/project`) as a data volume in the container (`:/check` - this name is set in the Dockerfile so please do not modify it!) by running the following command:

```bash
docker run --rm -it -v /path/to/your/project:/check yamafaktory/docker-flowtype
```

To get a list of the commands and options available via the [CLI tool](https://flowtype.org/docs/cli.html), run:

```bash
docker run --rm -it yamafaktory/docker-flowtype flow --help
```

For example, using the **check** command (full Flow check that prints the results):

```bash
docker run --rm -it -v /path/to/your/project:/check docker-flowtype flow check
```

Please refer to the [flow documentation](https://flowtype.org/docs/getting-started.html) for further guidance.

## Flow version

The current working version is **v0.26.0**, which is set by default in the Docker image.

You can easily choose any [former verion](https://github.com/facebook/flow/tags) when building the Docker image locally:

```bash
docker build -t --build-arg BUILD_FLOW_VERSION=0.25.0 yamafaktory/docker-flowtype .
```

## License

Released under the [MIT license](https://opensource.org/licenses/MIT) by Davy Duperron.

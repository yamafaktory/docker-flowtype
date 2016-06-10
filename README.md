# docker-flowtype

> A [Docker](https://www.docker.com/) image for [Flow](https://flowtype.org/) based on [ocaml/opam:debian](https://github.com/ocaml/opam-dockerfiles).

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
docker build -t docker-flowtype .
```

## Running the Docker image as a container

Run the following command in order to execute the **flow** static type checker in your project:

```
docker run -it yamafaktory/docker-flowtype flow
```

Please refer to the [flow documentation](https://flowtype.org/docs/getting-started.html) for further guidance.

## License

Released under the [MIT license](https://opensource.org/licenses/MIT) by Davy Duperron.

#
# Flowtype Dockerfile
#

FROM ocaml/opam:debian

MAINTAINER Davy Duperron <yamafaktory@gmail.com>

# Set environment variables.
ENV DEBIAN_FRONTEND noninteractive
ENV FLOW_VERSION=0.26.0

# Install flowtype.
RUN opam depext --install flowtype

CMD ["flow"]

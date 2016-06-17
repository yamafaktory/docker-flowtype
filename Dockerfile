#
# Flowtype Dockerfile
#

FROM ocaml/opam:debian

MAINTAINER Davy Duperron <yamafaktory@gmail.com>

# Set environment variables.
ENV DEBIAN_FRONTEND noninteractive
ENV FLOW_VERSION=0.27.0

# Switch to root user.
USER root

# Add missing dependency.
RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -qq -yy libelf-dev

# Switch back to opam user.
USER opam

# Install flowtype.
RUN opam depext --install flowtype

# Create a volume where the data to be checked will be mounted.
VOLUME /check

# Set it as working directory.
WORKDIR /check

# Provide defaults for the container.
CMD ["flow"]

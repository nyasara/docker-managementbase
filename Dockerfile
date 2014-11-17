FROM ubuntu:latest

# Install confd
RUN apt-get update \
    && apt-get -yq install wget git curl \
    &&  wget https://github.com/kelseyhightower/confd/releases/download/v0.6.3/confd-0.6.3-linux-amd64 \
    && mv confd-0.6.3-linux-amd64 /usr/local/bin/confd \
    && chmod +x /usr/local/bin/confd \
    && mkdir /etc/confd \
    && mkdir /etc/confd/conf.d \
    && mkdir /etc/confd/templates

# Copies the base config into the conf.d directory
COPY confd.toml /etc/confd/confd.toml

# Install whatever else we end up needing



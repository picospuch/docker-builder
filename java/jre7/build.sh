#!/bin/bash

source "$DOCKER_SRC/build-pre.sh"

apt-get -qq update || exit $?
apt-get -qq -y install openjdk-7-jre-headless || exit $?
apt-get -qq clean || exit $?

source "$DOCKER_SRC/build-post.sh"

#!/bin/sh

PROJECT_DIR=${PWD}

# shellcheck disable=SC2112
function unpacked() {
  # shellcheck disable=SC2039
  local path=$1;
  mkdir -p "${path}"/build/dependency
  # shellcheck disable=SC2164
  cd "${path}"/build/dependency
  jar -xf ../libs/*.jar
  # shellcheck disable=SC2164
  cd "$PROJECT_DIR"
}

# shellcheck disable=SC2112
function make_docker_image() {
  docker build -t "$1" "$2"
}

unpacked spring-cloud-config-server
unpacked spring-cloud-config-client

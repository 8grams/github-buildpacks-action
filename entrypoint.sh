#!/bin/sh -l

podman login -u "$INPUT_DOCKER_USERNAME" -p "$INPUT_DOCKER_PASSWORD"
pack build "$INPUT_APP_NAME":"$INPUT_TAG_NAME" --builder gcr.io/buildpacks/builder:v1
podman push "$INPUT_APP_NAME":"$INPUT_TAG_NAME"


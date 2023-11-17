#!/bin/sh -l

pack build "$INPUT_APP_NAME":"$INPUT_TAG_NAME" --builder gcr.io/buildpacks/builder:v1

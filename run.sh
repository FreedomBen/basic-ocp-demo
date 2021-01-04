#!/usr/bin/env bash

podman run \
  --env BASIC_OCP_DEMO_ENV=master \
  --rm \
  --interactive \
  --tty \
  --publish 4567:4567 \
  quay.io/freedomben/basic-ocp-demo:master

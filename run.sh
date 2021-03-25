#!/usr/bin/env bash

BASIC_OCP_DEMO_ENV=${BASIC_OCP_DEMO_ENV:-master}

podman run \
  --env BASIC_OCP_DEMO_ENV=${BASIC_OCP_DEMO_ENV} \
  --rm \
  --interactive \
  --tty \
  --publish 4567:4567 \
  quay.io/freedomben/basic-ocp-demo:latest

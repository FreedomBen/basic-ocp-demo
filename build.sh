#!/usr/bin/env bash

podman build \
  --tag quay.io/freedomben/basic-ocp-demo:latest \
  --tag quay.io/freedomben/basic-ocp-demo:v1.0.1 \
  .

#!/usr/bin/env

# Additional ags:  --source-secret if repo is private

# Development environment
oc new-project basic-ocp-demo-development
oc new-app https://github.com/FreedomBen/basic-ocp-demo#development
oc expose svc basic-ocp-demo

 # Production environment
oc new-project basic-ocp-demo-production
oc new-app https://github.com/FreedomBen/basic-ocp-demo#production
oc expose svc basic-ocp-demo

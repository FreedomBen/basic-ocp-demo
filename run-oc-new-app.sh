#!/usr/bin/env

# Additional ags:  --source-secret if repo is private

oc new-project basic-ocp-demo-development
# use branch "development"
oc new-app https://github.com/FreedomBen/basic-ocp-demo#development
oc expose svc basic-ocp-demo

oc new-project basic-ocp-demo-production
# use branch "production"
oc new-app https://github.com/FreedomBen/basic-ocp-demo#production
oc expose svc basic-ocp-demo

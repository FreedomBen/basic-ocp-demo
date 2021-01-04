# Sample Demo app for OpenShift

## Using s2i / oc new-app

```bash
# Development environment
oc new-project basic-ocp-demo-development
oc new-app https://github.com/FreedomBen/basic-ocp-demo#development
oc expose svc basic-ocp-demo

 # Production environment
oc new-project basic-ocp-demo-production
oc new-app https://github.com/FreedomBen/basic-ocp-demo#production
oc expose svc basic-ocp-demo
```

<p align="center">
  <img src="https://github.com/FreedomBen/basic-ocp-demo/blob/master/example.png?raw=true" alt="Screenshot" width="450" />
</p>

## Deploying from YAML

There are YAML files available in the `deploy` directory that can be used to deploy.

```bash
oc new-project basic-ocp-demo-project

# Create (deploy) resources
oc apply -f deploy/basic-ocp-demo.yaml

# To delete resources
oc delete all -l app=basic-ocp-demo
```

Some things you can do to get familiar:

```bash
# Let's look at the pods that got created
oc get pods

# Using the pod name above, let's get a human readable description
# Your pod name will vary a bit from mine
oc describe pods basic-ocp-demo-554ddd794f-9zwnw

# Let's see that pod in YAML form
oc get pods basic-ocp-demo-554ddd794f-9zwnw -o yaml

# You can save this off for later use
oc get pods basic-ocp-demo-554ddd794f-9zwnw -o yaml | tee basic-ocp-demo-pod.yaml

# Tweak the deployment YAML somehow and redeploy it
# This is idempotent (Only things that changed will be updated)
oc apply -f deploy/basic-ocp-demo.yaml

# Edit a resource directly and see the change take effect
# If you need a usggestion try deleting the `tls` key section and see
# that the route turns HTTP only (load balancers on your cluster must
# support this for it to work)
oc edit route basic-ocp-demo

# Now undo your chagne by redeploying. Note that only the resource you
# changed gets updated
oc apply -f deploy/basic-ocp-demo.yaml

# rsh into the pod and curl it locally
oc rsh basic-ocp-demo-554ddd794f-9zwnw
sh-4.4$ curl localhost:4567/healthz
{"ok":true,"datetime":"2021-01-04 22:36:28 UTC"}

# Get a debug shell in a Pod. Your pod name will be slightly different
oc debug basic-ocp-demo-554ddd794f-9zwnw

# Try out oc explain
oc explain deployment.spec.template.spec.containers.ports
```

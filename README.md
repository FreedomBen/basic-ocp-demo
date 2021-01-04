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
# Tweak the deployment YAML somehow and redeploy it
# This is idempotent (Only things that changed will be updated)
oc apply -f deploy/basic-ocp-demo.yaml

# Edit a resource directly and see the change take effect
# If you need a usggestion try deleting the `tls` key section and see
# that the route turns HTTP only (load balancers on your cluster must
# support this for it to work)
oc edit route basic-ocp-demo
```

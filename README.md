# Sample Demo app for OpenShift

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

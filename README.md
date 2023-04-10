# Trying out K8s

Building off from https://learnk8s.io/deploying-nodejs-kubernetes

## Building the Image

To build the image, run `docker build -t ben-knote:<version> .`.

## Running on Minikube

Make sure to have minikube installed.

Before starting, make sure to enable the default ingress controller with `minikube addons enable ingress`.

- To start, run `kubectl apply -f kube`.
- To verify that it is running, run `kubectl get pods`. There should be 2 pods.
- To restart, run `kubectl restart ben-knote`.
- To delete, run `kubectl delete -f kube`.
- To run commands, run `kubectl exec <pod name> -- <command>`

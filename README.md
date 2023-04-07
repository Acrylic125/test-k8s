# Trying out K8s

Building off from https://learnk8s.io/deploying-nodejs-kubernetes

## Building the Image

To build the image, run `docker build -t ben-knote:<version> .`.

## Running on Minikube

Make sure to have minikube installed.

- To start, run `kubectl apply -f kube`.
- To verify that it is running, run `kubectl get pods`. There should be 2 pods.
- To restart, run `kubectl restart ben-knote`.
- To delete, run `kubectl delete -f kube`.

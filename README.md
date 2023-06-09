# Trying out K8s

Building off from https://learnk8s.io/deploying-nodejs-kubernetes

## Building the Image

To build the image, run `docker build -t ben-knote:<version> .`.

## Running on Minikube

Make sure to have minikube installed.

Make sure to first setup the nginx ingress controller https://kubernetes.github.io/ingress-nginx/deploy/

THe ingress controller will be installed in the `ingress-nginx` namespace. Make sure to port forward it to make accessible from the browser using `kubectl port-forward --namespace=ingress-nginx service/ingress-nginx-controller 3009:80`

- To start, run `kubectl apply -f kube`.
- To verify that it is running, run `kubectl get pods`. There should be 2 pods.
- To restart, run `kubectl restart ben-knote`.
- To delete, run `kubectl delete -f kube`.
- To run commands, run `kubectl exec <pod name> -- <command>`

## References

- HPA requires metric server. However, if this is being tested locally, we need to disable TLS verification https://github.com/kubernetes-sigs/metrics-server/issues/917
- ChaosMesh dashboard has permissions enabled by default if it is installed through helm. To disable it (For local testing), run `helm upgrade chaos-mesh chaos-mesh/chaos-mesh --namespace=chaos-mesh  --set dashboard.securityMode=false`. For reference, https://chaos-mesh.org/docs/next/manage-user-permissions/#enable-or-disable-permission-authentication

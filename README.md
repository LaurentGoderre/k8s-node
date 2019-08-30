# README

## Testing on a Local Cluster

This guide assumes Docker and a Kubernetes cluster are installed.

* Install [Helm](https://helm.sh/docs/using_helm/)
* Install the [NGINX Ingress controller](https://kubernetes.github.io/ingress-nginx/deploy/)
* Run `make`
* Get the IP of the cluster:
  ```
  kubectl cluster-info | head -n 1 | grep -Po '(?<=https://)([^:]*)(?=:8443)'
  ```
* Add the following to the `/etc/hosts` and replace 0.0.0.0 with the IP from the previous step
  ```
  0.0.0.0 helloworld.info
  ```
* Open http://helloworld.info in your browser

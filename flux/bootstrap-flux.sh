#! /bin/sh
kubectl apply -f namespace.yaml
helm repo add fluxcd https://charts.fluxcd.io
helm upgrade -i flux fluxcd/flux -n flux -f values-flux.yaml
helm upgrade -i helm-operator fluxcd/helm-operator -n flux -f values-helm-operator.yaml

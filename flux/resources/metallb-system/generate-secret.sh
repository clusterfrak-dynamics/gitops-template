#! /bin/sh
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)" -o yaml --dry-run=client > metallb-secret.yaml

#!/bin/bash

# create kind kubernetes cluster
kind create cluster --config 3node.yaml || exit 1

# install NGINX ingress
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

# install prometheus
helm repo update
helm install prometheus prometheus-community/prometheus --create-namespace --namespace prom || exit 1

# create prometheus ingress 
until kubectl apply -f prometheus-ingress.yaml; do
    echo -e "\nIngress controller not reponding. Waiting for the ingress to start up...\n\n"
    sleep 15
done

# Fire up Prometheus at http://prom.local:9080 !
echo -e "\n\n\nPlease append \"127.0.0.1 prom.local\" to your hosts file. \nThen prometheus will be avalable at http://prom.local:9080"

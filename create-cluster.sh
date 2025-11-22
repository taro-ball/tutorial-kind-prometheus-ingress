#!/bin/bash
kind create cluster --config 3node.yaml

# install prometheus
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts && helm repo update
helm install prometheus prometheus-community/prometheus --create-namespace --namespace prom || exit 1
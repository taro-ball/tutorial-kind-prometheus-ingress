#!/bin/bash
kind create cluster --config 3node.yaml

helm install prometheus prometheus-community/prometheus --create-namespace --namespace prom
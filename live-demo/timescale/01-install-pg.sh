#!/bin/bash

kubectl create namespace timescale
kubectl apply -f manifest.yaml -n timescale

# kubectl cnpg pgadmin4 demo-db -n timescale
# kubectl cnpg pgadmin4 demo-db --dry-run  -n timescale| kubectl delete -f -


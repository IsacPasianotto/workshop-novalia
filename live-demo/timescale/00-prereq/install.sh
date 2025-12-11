#!/bin/bash
kubectl cnpg install generate \
        --namespace pg-operator \
        --replicas 3 >> install.yaml

kubectl create -f install.yaml

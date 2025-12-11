#!/bin/bash

# helm repo add questdb https://helm.questdb.io/
# helm repo update

kubectl create namespace questdb
helm install questdb questdb/questdb -f values.yaml -n questdb

#!/bin/bash

# helm repo add influxdata https://helm.influxdata.com/
# helm repo update

kubectl create namespace influx
helm  install influxv2chart influxdata/influxdb2 -f values.yaml -n influx

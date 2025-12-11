#!/bin/bash

export DBADDRES=192.168.132.101

pgcontroller=$(kubectl cnpg status demo-db -n timescale | grep "Primary instance" | awk '{print $3}')
kubectl exec -n timescale -it $pgcontroller -- \
 				psql -U postgres -d newdb -c "CREATE EXTENSION IF NOT EXISTS timescaledb;"

tsbs_run_queries_timescaledb \
    --burn-in=50 \
    --db-name="newdb" \
    --debug=0 \
    --file=./querytimescale.gz \
    --hosts=${DBADDRES} \
    --max-queries=10000 \
    --user="demo" \
    --pass="changeit123" \
    --port=5432 \
    --postgres="host=${DBADDRES} user=demo sslmode=disable" \
    --print-responses=false \
    --workers=4

#!/bin/bash

export DBADDRES=192.168.132.101

pgcontroller=$(kubectl cnpg status demo-db -n timescale | grep "Primary instance" | awk '{print $3}')
kubectl exec -n timescale -it $pgcontroller -- \
				psql -U postgres -d postgres -c "ALTER ROLE demo CREATEDB;"


tsbs_load_timescaledb \
    --seed=42 \
	  --host=${DBADDRES} \
	  --port=5432 \
	  --use-insert \
	  --user="demo" \
	  --pass="changeit123" \
	  --create-metrics-table \
	  --admin-db-name="demo" \
	  --db-name="newdb" \
	  --do-create-db \
	  --limit=0 \
	  --postgres="sslmode=disable" \
	  --workers=4 \
	  --use-hypertable=False \
	  --file=./datatimescale.gz

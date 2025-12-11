#!/bin/bash

tsbs_generate_data \
  --format=questdb \
  --use-case=devops \
  --scale=20 \
  --seed=42 \
  --log-interval=40s \
  --timestamp-start=2025-01-01T00:00:00Z \
  --timestamp-end=2025-01-02T00:00:00Z \
  > ./dataquestdb.gz

tsbs_generate_queries \
    --format=questdb \
    --use-case=devops \
    --scale=20 \
   --file=./queriesquestdb.gz \
   --seed=42 \
   --debug=0 \
   --db-name="default" \
   --queries=10000 \
   --query-type=single-groupby-5-1-12 >/dev/null 2>&1

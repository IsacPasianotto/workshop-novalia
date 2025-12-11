#!/bin/bash

URL=http://192.168.132.101:9000
ILPBINDTO=192.168.132.101:9009

tsbs_run_queries_questdb \
    --urls="${URL}" \
    --burn-in=50 \
    --debug=0 \
    --file=./queriesquestdb.gz \
    --max-queries=10000 \
    --workers=4

#!/bin/bash

URL=http://192.168.132.101:9000
ILPBINDTO=192.168.132.101:9009


tsbs_load_questdb \
    --url=$URL \
    --seed=42 \
    --workers=4 \
    --limit=0 \
    --do-load=true \
    --batch-size=100 \
    --hash-workers=true \
    --ilp-bind-to=$ILPBINDTO \
    --file=./dataquestdb.gz

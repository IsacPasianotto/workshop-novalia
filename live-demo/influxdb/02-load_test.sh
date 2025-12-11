#!/bin/bash

URL="http://192.168.132.101:80"
TOKEN=Hvdo6GOEuk5lu84nM1mN-5kL6_ZYKohoSULc0N09yZ3GW71MoQDH2Jk6y1B7GuITETopH3kzw32m22veFPUF5Q==

tsbs_load_influx \
  --urls="$URL" \
  --do-load=true \
  --db-name="default" \
  --do-create-db=false  \
  --file=./datainflux.gz \
  --workers=4 \
  --batch-size=100 \
  --limit=0 \
  --hash-workers=true \
  --organization=influxdata \
  --auth-token=$TOKEN

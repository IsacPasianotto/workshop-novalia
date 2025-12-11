#!/bin/bash

URL="http://192.168.132.101:80"
TOKEN=Hvdo6GOEuk5lu84nM1mN-5kL6_ZYKohoSULc0N09yZ3GW71MoQDH2Jk6y1B7GuITETopH3kzw32m22veFPUF5Q==

tsbs_run_queries_influx \
  --urls="${URL}" \
  --burn-in=50 \
  --chunk-response-size=0 \
  --debug=0 \
  --db-name="default" \
  --file=./queriesinflux.gz \
  --max-queries=10000 \
  --workers=4 \
  --auth-token=${TOKEN}

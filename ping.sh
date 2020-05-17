#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

PING=$(ping www.google.com -c 1 -w 1)
PINGMS=$(echo $PING | cut -d '/' -f 4) 
REQUEST=$(curl -Ssi -XPOST "http://influxdb:8086/write?db=db" --data-binary "latency value=$PINGMS" | head -n 1 | cut -d ' ' -f 1,2)

echo "$PINGMS $REQUEST"

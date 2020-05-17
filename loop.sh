#!/bin/bash

cd "$(dirname "$0")"

while true; do
  ./ping.sh
  sleep 15
done

#!/bin/bash
set -euo pipefail
for attempt in $(seq 1 30); do
  if curl --fail --silent --show-error --max-time 10 http://localhost:8080/SpringBootHelloWorldExampleApplication/; then
    exit 0
  fi
  sleep 5
done
echo 'Application health check failed.' >&2
exit 1

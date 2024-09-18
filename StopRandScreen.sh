#!/bin/bash

jobs -p | while read -r job; do
  echo "Terminating background job with PID: $job"

  kill "$job"

  sleep 5
  if kill -0 "$job" 2>/dev/null; then
    echo "Forcing termination of job with PID: $job"
    kill -9 "$job"
  fi
done

echo "All background tasks have been terminated."

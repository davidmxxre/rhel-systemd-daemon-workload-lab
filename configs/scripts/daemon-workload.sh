#!/bin/bash

source /etc/sysconfig/daemon-workload

while true; do
  echo "Service running at $(date)" >> /var/log/daemon-workload.log
  sleep "$INTERVAL"
done

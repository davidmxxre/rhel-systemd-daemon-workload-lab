# Architecture

Components:

1. Script
   /opt/mylab/daemon-workload.sh
   
2. Environment File
   /etc/sysconfig/daemon-workload

3. systemd Service
   daemon-workload.service (continuous execution)

4. Timer Workflow
   daemon-workload.timer -> daemon-workload-once.service -> script/log

Logs:
- /var/log/daemon-workload.log

Execution Model:
- daemon-workload.service runs continuously as a background service
- daemon-workload.timer triggers a one-shot service at intervals
- both write to the same log file for verification

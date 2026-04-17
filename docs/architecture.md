# Architecture

Components:

1. Script
   /opt/mylab/daemon-workload.sh
   
2. Environment File
   /etc/sysconfig/daemon-workload

3. systemd Service
   daemon-workload.service

4. Timer Workflow
   daemon-workload.timer -> daemon-workload-once.service -> script/log

Output:
Logs written to /var/log/daemon-worlkload.log

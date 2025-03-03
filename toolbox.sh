#!/bin/bash

# Update rkhunter data
sudo rkhunter --update

# Run rkhunter scan
echo "rkhunter initiated... running scan -- please wait..."
if yes | sudo rkhunter --check | tee /home/sysadmin/Project4/rkhunter_scan_results.log && cat /var/log/rkhunter.log; then
    echo "rkhunter scan completed successfully. Check /home/sysadmin/Project4/rkhunter_scan_results.log for details."
else
    echo "rkhunter scan encountered an error. Check /home/sysadmin/Project4/rkhunter_scan_results.log for details."
    exit 1
fi
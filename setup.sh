#!/bin/bash

# Update system
apt update && apt upgrade -y

# Install Cockpit
apt install -y cockpit

# Start and enable Cockpit
systemctl enable --now cockpit.socket

# Open firewall (if using UFW)
ufw allow 9090/tcp

echo "Cockpit installed. Access via https://<instance-public-ip>:9090"

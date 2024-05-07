#!/bin/bash

# Update and upgrade system packages
sudo apt-get update
sudo apt-get upgrade -y

# Download and install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo apt-get --fix-broken install

# Install necessary dependencies
sudo apt-get install build-essential libssl-dev libffi-dev python3-pip python3-venv xvfb -y

# Set up virtual environment and install dependencies
python3 -m venv .venv
source .venv/bin/activate
pip3 install xvfbwrapper selenium webdriver-manager

# Create the script file
sudo nano run_bg.sh <<EOF
#!/usr/bin/env bash
set -e
source .venv/bin/activate
xvfb-run -a python /home/ubuntu/play.py
EOF

# Make the script executable
sudo chmod +x run_bg.sh

# Add crontab entries
#(crontab -l ; echo "*/5 * * * * sleep 30 && /path/to/run_bg.sh") | crontab -
#(crontab -l ; echo "*/5 * * * * sleep 15 && /path/to/run_bg.sh") | crontab -

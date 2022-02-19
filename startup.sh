#!/bin/bash

# Update
sudo apt update &&
sudo apt upgrade -y &&
sudo apt autoremove -y &&

# Install Packages
sudo apt install git -y &&
sudo apt install python3-pip -y &&
sudo apt-get install python3-venv -y &&
pip3 install wheel &&
pip3 install selenium &&
pip3 install -r ~/startup/requirements.txt &&

# Clone Repository
git clone https://github.com/michaelgambino/startup.git &&

# Install kijiji-manager
git clone https://github.com/jackm/kijiji-manager.git &&
cd kijiji-manager && mkdir instance &&
python3 -m venv venv &&
source venv/bin/activate &&
pip3 install . &&
cd kijiji_manager &&
python3 ~/Desktop/startup/keychange.py &&
mv kijiji-manager.cfg ~/kijiji-manager/instance/kijiji-manager.cfg &&

# Repost
cd && cd kijiji-manager &&
source venv/bin/activate &&
python3 -m kijiji_manager &&
python3 ~/startup/repost.py

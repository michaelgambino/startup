#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y &&

sudo apt install git -y &&  sudo apt install python3-pip -y &&

# Clone Repository

git clone https://github.com/michaelgambino/startup.git &&

# Install venv

sudo apt install python3.7-venv &&

# Install selenium

pip3 install selenium && pip3 install -r ~/startup/requirements.txt &&

# Install kijiji-manager

git clone https://github.com/jackm/kijiji-manager.git &&
cd kijiji-manager && mkdir instance &&

python3 -m venv venv &&
source venv/bin/activate &&

pip3 install . &&

cd kijiji_manager &&

python3 ~/startup/keychange.py &&

mv kijiji-manager.cfg ~/kijiji-manager/instance/kijiji-manager.cfg &&

cd && cd kijiji-manager &&

python3 -m kijiji_manager &&

python3 ~/startup/main.py

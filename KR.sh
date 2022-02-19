#!/bin/bash

# Install Kijiji-Reposter
git clone https://github.com/rybodiddly/Kijiji-Reposter.git &&
cd Kijiji-Reposter &&
python3 -m venv venv &&
source venv/bin/activate &&
pip3 install WTForms==2.3.3 &&
pip3 install -r requirements.txt &&

# Run Kijiji-Reposter
cd Kijiji-Reposter &&
source venv/bin/activate &&
python3 server.py


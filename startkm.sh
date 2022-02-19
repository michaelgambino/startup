#!/bin/bash

# Start kijiji-manager
cd kijiji-manager &&
source venv/bin/activate &&
python3 -m kijiji_manager &&

# Repost Script
python3 ~/startup/repost.py

#!/bin/bash
echo -e "\nInstalling Sherlock..."
git clone https://github.com/sherlock-project/sherlock.git ~/sherlock
cd ~/sherlock && pip3 install -r requirements.txt

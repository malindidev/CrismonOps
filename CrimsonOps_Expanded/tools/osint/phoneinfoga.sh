#!/bin/bash
echo -e "\nInstalling PhoneInfoga..."
git clone https://github.com/sundowndev/PhoneInfoga.git ~/PhoneInfoga
cd ~/PhoneInfoga && pip3 install -r requirements.txt

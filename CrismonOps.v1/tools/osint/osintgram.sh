#!/bin/bash
echo -e "\nInstalling Osintgram..."
git clone https://github.com/Datalux/Osintgram.git ~/Osintgram
cd ~/Osintgram && pip3 install -r requirements.txt

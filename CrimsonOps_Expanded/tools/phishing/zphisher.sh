#!/bin/bash
echo -e "\nInstalling ZPhisher..."
git clone https://github.com/htr-tech/zphisher.git ~/zphisher
cd ~/zphisher && chmod +x zphisher.sh
echo "Done. Run: bash ~/zphisher/zphisher.sh"

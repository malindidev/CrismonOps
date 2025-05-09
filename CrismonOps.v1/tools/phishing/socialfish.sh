#!/bin/bash
echo -e "\nInstalling SocialFish..."
git clone https://github.com/UndeadSec/SocialFish.git ~/SocialFish
cd ~/SocialFish && chmod +x SocialFish.py
echo "Done. Run: python3 ~/SocialFish/SocialFish.py"

#!/bin/bash
source utils/banner.sh
TOOLS_DIR="./tools"
function main_menu() {
    echo -e "\n\e[1;31mCrimsonOps Main Menu:\e[0m"
    echo "1) Phishing"
    echo "2) Recon"
    echo "3) Exploit"
    echo "4) Brute Force"
    echo "5) Web Scanning"
    echo "6) Wireless"
    echo "7) OSINT"
    echo "8) Network"
    echo "9) Utilities"
    echo "0) Exit"
}
function sub_menu() {
    local category=$1
    echo -e "\n--- $category Installers ---"
    select tool in $(ls $TOOLS_DIR/$category | sed 's/.sh//'); do
        if [[ -n $tool ]]; then
            bash $TOOLS_DIR/$category/$tool.sh
        else
            echo "Invalid choice"
        fi
        break
    done
}
while true; do
    main_menu
    read -p "Select category: " cat_choice
    case $cat_choice in
        1) sub_menu phishing ;;
        2) sub_menu recon ;;
        3) sub_menu exploit ;;
        4) sub_menu brute ;;
        5) sub_menu webscan ;;
        6) sub_menu wireless ;;
        7) sub_menu osint ;;
        8) sub_menu network ;;
        9) sub_menu utilities ;;
        0) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice";;
    esac
done

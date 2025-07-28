#!/usr/bin/env bash
set -euo pipefail

# SetTheBox Uninstaller
# Version: 2.0.0
# Authors: D4rkAce & Zoyma
# Description: Global uninstaller for SetTheBox tool

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Installation directory
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="SetTheBox"

# Function to display banner
show_banner() {
    cat << "EOF"

███████╗███████╗████████╗████████╗██╗  ██╗███████╗██████╗  ██████╗ ██╗  ██╗
██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║  ██║██╔════╝██╔══██╗██╔═══██╗╚██╗██╔╝
███████╗█████╗     ██║      ██║   ███████║█████╗  ██████╔╝██║   ██║ ╚███╔╝ 
╚════██║██╔══╝     ██║      ██║   ██╔══██║██╔══╝  ██╔══██╗██║   ██║ ██╔██╗ 
███████║███████╗   ██║      ██║   ██║  ██║███████╗██████╔╝╚██████╔╝██╔╝ ██╗
╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝ 

                           UNINSTALLER v2.0.0

EOF
}

# Function to check if script is run as root
check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo -e "${RED}Error: This uninstaller requires root privileges.${NC}"
        echo -e "${YELLOW}Please run with sudo: sudo ./uninstall.sh${NC}"
        exit 1
    fi
}

# Function to check if SetTheBox is installed
check_installation() {
    if [ ! -f "$INSTALL_DIR/$SCRIPT_NAME" ]; then
        echo -e "${YELLOW}SetTheBox is not currently installed on this system.${NC}"
        exit 0
    fi
}

# Function to confirm uninstallation
confirm_uninstall() {
    echo -e "${YELLOW}This will remove SetTheBox from your system.${NC}"
    read -p "Are you sure you want to uninstall SetTheBox? [y/N]: " -r
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${BLUE}Uninstallation cancelled.${NC}"
        exit 0
    fi
}

# Function to uninstall the script
uninstall_script() {
    echo -e "${BLUE}Removing SetTheBox from $INSTALL_DIR...${NC}"
    
    # Remove the script
    rm -f "$INSTALL_DIR/$SCRIPT_NAME"
    
    echo -e "${GREEN}✓ SetTheBox uninstalled successfully!${NC}"
}

# Function to verify uninstallation
verify_uninstallation() {
    if [ ! -f "$INSTALL_DIR/$SCRIPT_NAME" ]; then
        echo -e "${GREEN}✓ Uninstallation verified successfully!${NC}"
        echo -e "${GREEN}SetTheBox has been completely removed from your system.${NC}"
    else
        echo -e "${RED}✗ Uninstallation verification failed!${NC}"
        exit 1
    fi
}

# Main uninstallation process
main() {
    show_banner
    echo -e "${BLUE}SetTheBox Global Uninstaller${NC}"
    echo
    
    check_root
    check_installation
    confirm_uninstall
    uninstall_script
    verify_uninstallation
    
    echo -e "${GREEN}👋 Thanks for using SetTheBox!${NC}"
}

# Run main function
main "$@"

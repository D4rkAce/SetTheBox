#!/usr/bin/env bash
set -euo pipefail

# SetTheBox Installer
# Version: 2.0.0
# Authors: D4rkAce & Zoyma
# Description: Global installer for SetTheBox tool

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Installation directory
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="SetTheBox"
SOURCE_SCRIPT="SetTheBox"

# Function to display banner
show_banner() {
    cat << "EOF"

███████╗███████╗████████╗████████╗██╗  ██╗███████╗██████╗  ██████╗ ██╗  ██╗
██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║  ██║██╔════╝██╔══██╗██╔═══██╗╚██╗██╔╝
███████╗█████╗     ██║      ██║   ███████║█████╗  ██████╔╝██║   ██║ ╚███╔╝ 
╚════██║██╔══╝     ██║      ██║   ██╔══██║██╔══╝  ██╔══██╗██║   ██║ ██╔██╗ 
███████║███████╗   ██║      ██║   ██║  ██║███████╗██████╔╝╚██████╔╝██╔╝ ██╗
╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝ 

                            INSTALLER v2.0.0

EOF
}

# Function to check if script is run as root
check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo -e "${RED}Error: This installer requires root privileges.${NC}"
        echo -e "${YELLOW}Please run with sudo: sudo ./install.sh${NC}"
        exit 1
    fi
}

# Function to check if source script exists
check_source_script() {
    if [ ! -f "$SOURCE_SCRIPT" ]; then
        echo -e "${RED}Error: $SOURCE_SCRIPT not found in current directory.${NC}"
        echo -e "${YELLOW}Please run this installer from the SetTheBox repository directory.${NC}"
        exit 1
    fi
}

# Function to install the script
install_script() {
    echo -e "${BLUE}Installing SetTheBox to $INSTALL_DIR...${NC}"
    
    # Copy the script to the installation directory
    cp "$SOURCE_SCRIPT" "$INSTALL_DIR/$SCRIPT_NAME"
    
    # Make it executable
    chmod +x "$INSTALL_DIR/$SCRIPT_NAME"
    
    echo -e "${GREEN}✓ SetTheBox installed successfully!${NC}"
    echo -e "${GREEN}✓ You can now run 'SetTheBox' from anywhere in your system.${NC}"
}

# Function to check if already installed
check_existing_installation() {
    if [ -f "$INSTALL_DIR/$SCRIPT_NAME" ]; then
        echo -e "${YELLOW}SetTheBox is already installed.${NC}"
        read -p "Do you want to update it? [y/N]: " -r
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo -e "${BLUE}Installation cancelled.${NC}"
            exit 0
        fi
        echo -e "${BLUE}Updating existing installation...${NC}"
    fi
}

# Function to verify installation
verify_installation() {
    if [ -f "$INSTALL_DIR/$SCRIPT_NAME" ] && [ -x "$INSTALL_DIR/$SCRIPT_NAME" ]; then
        echo -e "${GREEN}✓ Installation verified successfully!${NC}"
        echo
        echo -e "${GREEN}Usage:${NC}"
        echo -e "  Just type: ${YELLOW}SetTheBox${NC}"
        echo -e "  From any directory in your system!"
        echo
        echo -e "${BLUE}To uninstall:${NC}"
        echo -e "  Run: ${YELLOW}sudo ./uninstall.sh${NC}"
        echo
    else
        echo -e "${RED}✗ Installation verification failed!${NC}"
        exit 1
    fi
}

# Main installation process
main() {
    show_banner
    echo -e "${BLUE}Welcome to SetTheBox Global Installer!${NC}"
    echo -e "${BLUE}This will install SetTheBox globally on your system.${NC}"
    echo
    
    check_root
    check_source_script
    check_existing_installation
    install_script
    verify_installation
    
    echo -e "${GREEN}🎉 Installation completed successfully!${NC}"
    echo -e "${GREEN}Happy hacking! 🔥${NC}"
}

# Run main function
main "$@"

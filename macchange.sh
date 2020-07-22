#!/bin/bash

# Simple script to change Mac Address of a selected network adapter.
# Requires macchanger to be installed on the system.

Clear

#Set Colour Variables
RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

# Print description
echo -e "${GREEN}Randomise MAC address${NOCOLOR} "

sleep 1

echo -e "${GREEN}1) Select Network Adapter${NOCOLOR}"

sleep 1

# Display network adapter
ifconfig -s

# Select the Network Adapter to change
echo -e "${GREEN}Enter Network Adapter${NOCOLOR}"
read Network_Adapter


# Turn off selected network adapter
ifconfig $Network_Adapter down

echo -e "${RED}$Network_Adapter down${NOCOLOR}"

sleep 1

# Run macchanger command
macchanger -r $Network_Adapter

# Turn on network adapter
ifconfig $Network_Adapter up

echo -e "${RED}$Network_Adapter up${NOCOLOR}"

sleep 1

echo -e "${GREEN}Mac Address Changed${NOCOLOR}"

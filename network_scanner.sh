#!/bin/bash

# Bash Network Scanner
# For authorized lab use only

echo "================================"
echo "     BASH NETWORK SCANNER"
echo "================================"
echo "Use only on systems you own or are authorized to test."
echo

if ! command -v nmap >/dev/null 2>&1; then
    echo "Error: Nmap is not installed."
    echo "Install it using: sudo apt install nmap"
    exit 1
fi

read -r -p "Enter your lab target IP address: " target

if [[ ! "$target" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Invalid IPv4 address format."
    exit 1
fi

echo
echo "Starting scan of: $target"
echo

# Scan and save results temporarily
nmap -sT --top-ports 100 "$target" -oN /tmp/scan_result.txt
scan_status=$?

echo
if [ "$scan_status" -ne 0 ]; then
    echo "Scan could not be completed successfully."
    exit 1
fi

echo "Scan completed."
read -r -p "Do you want to save the result? (y/n): " choice

case "$choice" in
    y|Y)
        read -r -p "Enter output filename [scan_result.txt]: " filename
        filename=${filename:-scan_result.txt}

        if [[ "$filename" == */* ]]; then
            echo "Please enter a filename, not a path."
            exit 
            fi 

        if cp /tmp/scan_result.txt "$filename"; then
            echo "Result saved to: $filename"
        else
            echo "Could not save the scan result."
            exit 1
        fi
        ;;
    n|N)
        echo "Result not saved."
        ;;
    *)
        echo "Invalid choice. Result not saved."
        ;;
esac

echo "Thank you for using Bash Network Scanner!"

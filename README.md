# bash-network--scanner
A Simple Bash Network Scanner using scan common TCP ports on authorized lab system
Bash Network Scanner

Project Description

Bash Network Scanner is a beginner-friendly cybersecurity project built using Bash scripting and Nmap. It scans the 100 most common TCP ports of a specified IPv4 address.

Features

- Checks whether Nmap is installed.
- Accepts a target IPv4 address.
- Scans the 100 most common TCP ports.
- Checks scan completion status.
- Allows users to save scan results to a text file.
- Supports saving or skipping the results.

Technologies Used

- Kali Linux
- Bash Scripting
- Nmap

How to Run

1. Install Nmap:
   "sudo apt install nmap"
2. Give execution permission:
   "chmod +x network_scanner.sh"
3. Run the script:
   "./network_scanner.sh"
4. Enter an authorized lab target IP address.
5. Choose "y" to save the result or "n" to skip saving.

Learning Outcomes

- Basic Bash scripting
- Conditional statements and case statements
- IPv4 input validation
- Network scanning with Nmap
- Saving scan output to a file

Disclaimer

This project is intended for educational purposes and authorized lab testing only. Scan only systems you own or have permission to test.

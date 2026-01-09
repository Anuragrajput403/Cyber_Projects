#!/bin/bash



read -p "Enter the IP address to scan: " IP

read -p "Enter start port (default 1): " START_PORT
START_PORT=${START_PORT:-1}

read -p "Enter end port (default 1024): " END_PORT
END_PORT=${END_PORT:-65535}

echo "Scanning $IP for open ports from $START_PORT to $END_PORT..."

for port in $(seq $START_PORT $END_PORT); doii
    if nc -z -w1 $IP $port 2>/dev/null; then
        echo "Port $port is open"
    fi
done

echo "Scan complete."

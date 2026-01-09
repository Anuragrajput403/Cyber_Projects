#!/bin/bash

read -p "Enter target IP or domain: " TARGET


if [ -z "$TARGET" ]; then
  echo " No target entered. Exiting."
  exit 1
fi

echo "Starting port scan on $TARGET"


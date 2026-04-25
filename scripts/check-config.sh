#!/bin/bash

FILE="config/webserver.conf"

# check if file exists
if [ ! -f "$FILE" ]; then
  echo "File does not exist!"
  exit 1
fi

# check if file is not empty
if [ ! -s "$FILE" ]; then
  echo "File is empty!"
  exit 1
fi

# check for keyword
if ! grep -q "server" "$FILE"; then
  echo "Missing keyword 'server'"
  exit 1
fi

echo "Config is valid!"
exit 0
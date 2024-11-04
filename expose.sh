#!/bin/bash

# Load .env file and extract APP_URL
if [ -f .env ]; then
  # Read the APP_URL from the .env file
  APP_URL=$(grep -E '^APP_URL=' .env | cut -d '=' -f2-)
else
  echo ".env file not found!"
  exit 1
fi

# Check if APP_URL was found
if [ -z "$APP_URL" ]; then
  echo "APP_URL is not set in the .env file!"
  exit 1
fi

# Expose share command parameters
# https://expose.dev/domains#
# example: development.mywebsite.dev
DOMAIN="YOUR_PRO_LICENSE_DOMAIN_NAME"
# Example: eu-1
SERVER="SERVER_REGION"

# Run the Expose share command
expose share "$APP_URL" --domain="$DOMAIN" --server="$SERVER"

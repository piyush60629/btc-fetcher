#!/bin/bash

# Create data folder if it doesn't exist
mkdir -p data

# Set output filename
FILENAME="data/btc_$(date +%F).json"

# Fetch BTC price from Coinbase API
if curl -s https://api.coinbase.com/v2/prices/BTC-USD/spot -o "$FILENAME"; then
    echo "[$(date)] Fetched BTC price and saved to $FILENAME"
else
    echo "[$(date)] Failed to fetch BTC price" >&2
fi

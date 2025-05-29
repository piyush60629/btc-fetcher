#!/bin/bash

# Step 1: Create the data directory if it doesn't exist
mkdir -p data

# Step 2: Set today's date and target filename
TODAY=$(date +%F)
FILENAME="data/btc_${TODAY}.json"

# Step 3: Fetch BTC price from Coinbase API and save to file
curl -s https://api.coinbase.com/v2/prices/BTC-USD/spot -o "$FILENAME"

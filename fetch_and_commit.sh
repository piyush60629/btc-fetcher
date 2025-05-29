#!/bin/bash

# Create data folder if it doesn't exist
mkdir -p data

# Fetch BTC price from Coinbase API
FILENAME="data/btc_$(date +%F).json"
curl -s https://api.coinbase.com/v2/prices/BTC-USD/spot -o "$FILENAME"


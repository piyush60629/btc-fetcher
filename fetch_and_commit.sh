#!/bin/bash

# Step 1: Set today's date
TODAY=$(date +%Y-%m-%d)
FILENAME="data/${TODAY}.json"

# Step 2: Fetch BTC price from CoinDesk
curl -s https://api.coinbase.com/v2/prices/BTC-USD/spot -o "$FILENAME"

# Step 3: Git add, commit and push
git add "$FILENAME"
git commit -m "Add BTC price for $TODAY"
git push origin main


BTC Price Fetcher
This project automatically fetches the daily Bitcoin (BTC) price from the Coinbase API and stores it as a JSON file in the repository. The data fetching and committing process is automated using GitHub Actions to run every day at midnight (UTC).

Features
Fetches BTC price daily from the Coinbase API

Saves data as data/btc_YYYY-MM-DD.json

Automated commit and push of data files to GitHub repository via GitHub Actions

Supports manual triggering of the workflow

Simple bash script for fetching and committing data

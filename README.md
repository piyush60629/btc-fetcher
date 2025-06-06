# BTC Price Fetcher

This project automatically fetches the daily Bitcoin (BTC) price from the Coinbase API and stores it as a JSON file in the repository. The data fetching and committing process is automated using GitHub Actions to run every day at midnight (UTC).

---

## Features

- Fetches BTC price daily from the Coinbase API
- Saves data as `data/btc_YYYY-MM-DD.json`
- Automated commit and push of data files to GitHub repository via GitHub Actions
- Supports manual triggering of the workflow
- Simple bash script for fetching and committing data

---  

## How It Works

- The `fetch_and_commit.sh` script fetches the current BTC price from the Coinbase API and saves it as a JSON file in the `data/` directory with the filename format `btc_YYYY-MM-DD.json`.
- GitHub Actions runs this script every day at midnight (UTC) and commits & pushes the new data file to the repository automatically.
- You can also manually trigger the workflow from the Actions tab in your GitHub repo.


---

## Setup & Usage

### 1. Clone the repository

```bash
git clone git@github.com:piyush60629/btc-fetcher.git
cd btc-fetcher

2. Script fetch_and_commit.sh
This script:

Creates the data folder if it doesn’t exist

Fetches BTC price from Coinbase API

Saves the JSON data as data/btc_YYYY-MM-DD.json

Adds, commits, and pushes changes to the repository

3. GitHub Actions workflow
The workflow .github/workflows/btc-fetch.yml is configured to:

Run daily at midnight UTC automatically

Run the bash script to fetch and commit BTC data

Use GitHub token for authenticated push



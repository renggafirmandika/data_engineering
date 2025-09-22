# Electricity Sector Data Integration & Augmentation

This repo acquires, integrates, augments, and stores Australian electricity/emissions datasets:
- [NGER](https://data.cer.gov.au/datasets/NGER/ID0243) (emissions & generation, 2014–2024)
- [CER](https://cer.gov.au/markets/reports-and-data/large-scale-renewable-energy-data) (approved/committed/probable projects)
- [ABS](https://www.abs.gov.au/methodologies/data-region-methodology/2011-24#data-downloads) (population & industry by state)
- Geocoding augmentation via OpenStreetMap Nominatim
Outputs are loaded into a DuckDB database.

## Quick start:
### 1) create venv & install exact deps
> python -m venv .venv
> Windows: .\.venv\Scripts\activate   |  macOS/Linux: source .venv/bin/activate
> python -m pip install --upgrade pip
> pip install -r requirements.txt

### 2) run the full pipeline (extract -> clean -> augment -> transform -> load)
run Assignment_1.ipynb

# Notes:

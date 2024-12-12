# **CMIP_DWH**
Crypto Market Intelligence Platform Data Warehouse

#### **Overview**

The goal of this project is to build a Data Warehouse (DWH) using Greenplum, orchestrated by Apache Airflow, to collect, process, and analyze data from various sources related to the cryptocurrency market. The hypothetical company, CryptoPulse Analytics, will use this platform for business intelligence (BI), reporting, and machine learning (ML) applications.

#### **Key Technologies**

Data Warehouse: Greenplum.

Orchestration: Apache Airflow.

APIs:

Data Transformation: Python, SQL.

Visualization:

#### **Project Scope**

1. **Data Sources**:
   - **Market Prices and Metrics**:
     - Pull real-time and historical price data for cryptocurrencies from APIs like Binance, CoinGecko, or CoinMarketCap.
     - Collect technical indicators (e.g., RSI, moving averages) using Python libraries like TA-Lib.
   - **News Articles**:
     - Scrape or ingest crypto-related articles from RSS feeds or APIs (e.g., CryptoPanic, Google News).
   - **Social Media Sentiment**:
     - Use APIs like Twitter or Reddit to fetch posts about specific cryptocurrencies.
     - Analyze sentiment using Python NLP libraries (e.g., NLTK, SpaCy, or Hugging Face models).
   - **Images**:
     - Gather images of charts, logos, or infographics from news or social media for ML-based visual analysis.

2. **Target Audience**:
   - **Data Analysts**: For BI dashboards on market trends.
   - **Data Scientists**: To develop predictive models (e.g., price prediction, sentiment correlation).
   - **Executives**: For detailed reports on market dynamics and sentiment trends.


#### **Repository Structure**

``` sh
CMIP_DWH/
├── README.md                        # Project description and setup instructions
├── .gitignore                       # Files and folders to ignore in Git
├── LICENSE                          # Apache License Version 2.0 license file
├── airflow/                         # Airflow workflows and configuration
│   ├── dags/                        # DAG definitions, organized by data layers
│   │   ├── raw/                     # Workflows for ingesting raw data
│   │   │   ├── fetch_prices_dag.py
│   │   │   ├── fetch_news_dag.py
│   │   │   ├── fetch_social_media_dag.py
│   │   │   └── fetch_images_dag.py
│   │   ├── ods/                     # Workflows for the Operational Data Store (cleaned data)
│   │   │   ├── transform_prices_dag.py
│   │   │   ├── transform_news_dag.py
│   │   │   └── transform_social_media_dag.py
│   │   ├── dds/                     # Workflows for the Detailed Data Store (fact and dimension tables)
│   │   │   ├── load_fact_prices_dag.py
│   │   │   ├── load_dim_cryptos_dag.py
│   │   │   └── load_fact_sentiments_dag.py
│   │   └── cdm/                     # Workflows for the Consumer Data Mart (aggregated and analytics-ready data)
│   │       ├── aggregate_price_trends_dag.py
│   │       ├── aggregate_sentiments_dag.py
│   │       └── prepare_dashboard_views_dag.py
│   ├── plugins/                     # Custom Airflow plugins (if needed)
│   └── configs/                     # Airflow configuration files (e.g., connections, variables)
├── notebooks/                       # Jupyter notebooks for data exploration and visualization
│   ├── exploratory_analysis.ipynb
│   ├── price_trend_analysis.ipynb
│   └── sentiment_analysis.ipynb
├── scripts/                         # Ad hoc scripts
│   ├── data_cleaning.py             # One-off data cleaning or analysis scripts
│   ├── data_quality_checks.py
│   ├── example_notebook.ipynb       # Jupyter notebooks for analysis and testing
│   └── utils/                       # Helper utilities for scripts
│       ├── __init__.py
│       ├── file_utils.py
│       └── db_utils.py
├── scrapers/                        # Python classes for scrapers and API parsers
│   ├── __init__.py
│   ├── news_scraper.py
│   ├── social_media_scraper.py
│   ├── price_api_parser.py
│   └── sentiment_analyzer.py
├── terraform/                       # Terraform configuration for Yandex Cloud resources
│   ├── main.tf                      # Main Terraform configuration file
│   ├── variables.tf                 # Variable definitions
│   ├── outputs.tf                   # Outputs definitions
│   ├── modules/                     # Terraform modules
│   ├── environments/                # Separate configurations for dev, prod
│       ├── dev/
│       └── prod/
├── tests/                           # Unit and integration tests
│   ├── test_scrapers.py
│   ├── test_airflow_dags.py
│   └── test_utils.py
└── requirements.txt                 # Python dependencies
```

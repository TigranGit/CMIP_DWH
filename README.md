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

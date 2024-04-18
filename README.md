# Bookon

## Data Sources

You’ll start by working with raw data that comes in different formats (csv , parquets). 
Those data files are stored in a github repository  https://github.com/dace-de/bootkon-h2-2024  
Your first task is to store the raw data into your Google Cloud Storage (GCS) bucket.

## Data Ingestion Layer

You will bring this data into your BigQuery AI Lakehouse environment. 
For batch data, you’ll use Dataproc Serverless and BigLake. 
For near real-time data, you’ll use Pub/Sub to handle data as it comes in. 
Because we want to simulate data ingestion at scale, we will be using the raw data that you have stored in GCS to simulate both batch and real time ingestion.
These tools help you get the data ready for processing and analysis.


## BigQuery AI Lakehouse

Think of this as the main camp where all your data hangs out. It’s a place that uses BigQuery, and it’s designed to work with different types of data, whether it’s structured neatly in tables or unstructured like a pile of text documents. Here, you can run different data operations without moving data around.

## Data Governance Layer

This is where you ensure that your data is clean, secure, and used properly. Using Dataplex, you’ll set rules and checks to maintain data quality and governance.

## Consumption Layer

Once you have your insights, you’ll use tools like Vertex AI for machine learning tasks and Looker Studio for creating reports and dashboards. This is where you turn data into something valuable, like detecting fraud or understanding customer sentiment.
Your goal is to share the results of your data predictions to your customers in a secure and private way. You will be using Analytics Hub for data sharing.

Throughout the event, you’ll be moving through these layers, using each tool to prepare, analyze, and draw insights from the data. You’ll see how they all connect to make a complete data analytics workflow on the cloud.

## Cost 

If you are using your GCP environment, running all labs will cost you around 200$ / month.

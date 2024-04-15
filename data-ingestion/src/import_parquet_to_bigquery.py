from pyspark.sql import SparkSession


# GCP Project ID
project_id = "your-project-id"


# GCS Path to Parquet Files
gcs_parquet_path = "gs://"your-project-id"-bucket/data-ingestion/parquet/ulb_fraud_detection/"


# BigQuery Dataset and Table Name
bq_dataset_name = "ml_datasets"
bq_table_name = "ulb_fraud_detection_parquet"


# Create a SparkSession
spark = SparkSession.builder\
   .appName("bigquery_to_gcs_parquet")\
   .getOrCreate()


# Read Parquet Files from GCS
df = spark.read.parquet(gcs_parquet_path)


# Write DataFrame to BigQuery
df.write.format("bigquery") \
    .option("table", f"{project_id}:{bq_dataset_name}.{bq_table_name}") \
    .mode("overwrite") \
    .save()


spark.stop()

#!/bin/bash

# This script assigns various IAM roles to a user and the default compute service account in a GCP project.

# Usage: ./assign_roles.sh PROJECT_ID user@example.com

# Check for correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 PROJECT_ID USER_EMAIL"
    exit 1
fi

# Assign command line arguments to variables
PROJECT_ID=$1
USER_EMAIL=$2

# Array of user roles with descriptions
declare -a user_roles=(
    "roles/bigquery.jobUser" # Can run BigQuery jobs
    "roles/bigquery.dataEditor" # Can edit BigQuery datasets
    "roles/bigquery.connectionAdmin" # Can manage BigQuery connections
    "roles/dataproc.editor" # Can edit Dataproc clusters
    "roles/aiplatform.admin" # Admin on Vertex AI
    "roles/dataplex.admin" # Admin on Dataplex
    "roles/datalineage.admin" # Admin on data lineage operations
    "roles/compute.admin" # Admin on Compute Engine
    "roles/storage.admin" # Admin on Cloud Storage
    "roles/storage.objectAdmin" # Admin on Cloud Storage objects
    "roles/iam.serviceAccountUser" # Can use service accounts
    "roles/pubsub.admin" # Admin on Pub/Sub
    "roles/resourcemanager.projectIamAdmin" # Project IAM admin
)

# Assign roles to user
for role in "${user_roles[@]}"
do
  echo "Assigning role $role to $USER_EMAIL in project $PROJECT_ID..."
  gcloud projects add-iam-policy-binding "$PROJECT_ID" \
    --member="user:$USER_EMAIL" --role="$role"
done

# Retrieve the project number for the default compute service account
PROJECT_NUMBER=$(gcloud projects describe "$PROJECT_ID" --format="value(projectNumber)")

# Check if we successfully retrieved the project number
if [ -z "$PROJECT_NUMBER" ]; then
  echo "Failed to get the project number for project ID $PROJECT_ID"
  exit 1
fi

# Define service account email using the project number
COMPUTE_SERVICE_ACCOUNT="$PROJECT_NUMBER-compute@developer.gserviceaccount.com"

# Array of service account roles with descriptions
declare -a service_account_roles=(
    "roles/dataproc.worker" # Can perform actions as a Dataproc worker
    "roles/bigquery.dataEditor" # Can edit BigQuery datasets
    "roles/bigquery.jobUser" # Can run BigQuery jobs
    "roles/storage.objectAdmin" # Admin on Cloud Storage objects
    "roles/storage.admin" # Admin on Cloud Storage
    "roles/iam.serviceAccountUser" # Can use service accounts
    "roles/pubsub.admin" # Admin on Pub/Sub
    "roles/serviceusage.serviceUsageConsumer" # Can use services
    "roles/resourcemanager.projectIamAdmin" # Project IAM admin
)

# Assign roles to the compute service account
for role in "${service_account_roles[@]}"
do
  echo "Assigning role $role to $COMPUTE_SERVICE_ACCOUNT in project $PROJECT_ID..."
  gcloud projects add-iam-policy-binding "$PROJECT_ID" \
    --member="serviceAccount:$COMPUTE_SERVICE_ACCOUNT" --role="$role"
done

echo "All roles have been assigned successfully."

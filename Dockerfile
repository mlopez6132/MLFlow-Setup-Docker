FROM mlflow:latest

RUN pip install mlflow pymysql boto3

# Set working directory
WORKDIR /mlflow

COPY .env /mlflow/.env

# Expose port 5000 for the MLflow server
EXPOSE 5000

# Run MLflow server
CMD mlflow server \
    --backend-store-uri ${MLFLOW_BACKEND_STORE_URI} \
    --default-artifact-root ${MLFLOW_ARTIFACT_ROOT} \
    --host 0.0.0.0 \
    --port 5000

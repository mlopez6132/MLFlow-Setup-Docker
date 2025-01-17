# MLflow Tracking Server using Docker Compose

Easily deploy an MLflow tracking server with MinIO S3 as the artifact store and MySQL as the backend store.

## How to Run

1. Clone this repository:

   ```bash
   git clone 
   ```

2. Navigate into the project directory:

   ```bash
   cd 
   ```

3. Build and run the containers:

   ```bash
   docker compose up -d --build
   ```

4. Access MLflow UI: [http://localhost:5000](http://localhost:5000)
5. Access MinIO UI: [http://localhost:9000](http://localhost:9000)

## Testing with `train_model.py`

Run the script to log experiments to MLflow:

```bash
python train_model.py
```

This logs parameters, metrics, and artifacts to MLflow and saves model artifacts to MinIO.

## Containerization

The setup includes:
- **MLflow server** - Tracks experiments and logs artifacts.
- **MinIO object storage** - Stores artifacts like trained models.
- **MySQL database** - Stores MLflow metadata.

## Future Improvements
- Add security layers
- Integrate AWS S3 with MinIO

JOB_NAME="mp4-run1"
gcloud ml-engine jobs submit training ${JOB_NAME} \
    --package-path mp4 \
    --module-name mp4.q_learning \
    --staging-bucket gs://mp4-output \
    --job-dir gs://mp4-output/${JOB_NAME} \
    --runtime-version 1.2 \
    --region us-central1 \
    --config config/cloudml-gpu.yaml \
    -- \
    --data_dir gs://mp4-output/data \
    --output_dir gs://mp4-output/${JOB_NAME} \
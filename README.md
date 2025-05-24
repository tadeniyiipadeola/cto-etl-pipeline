# cto-etl-pipeline
Build out the etl for processing the collectors.
sample_etl_pipeline/
│
├── ingest_to_raw/
├── raw_to_standardizer/
│   └── materials/
│       └── home_depot/
│           ├── etl_job.py              # Glue ETL script
│           └── schema_mapping.py       # Schema transformation map
│
├── standardizer_to_curated/
├── curated_to_blend/
│
├── manifest/
│   └── home_depot_job.yaml             # Job definition
│
├── utils/
│   └── s3_utils.py                     # Utility to move files in S3
│
└── README.md                           # Full pipeline documentation

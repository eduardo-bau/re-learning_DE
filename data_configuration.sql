-- Install extensions
INSTALL httpfs;
LOAD httpfs;
-- Minimum configuration for loading S3 dataset if the bucket is public
SET s3_region='us-east-1';

CREATE TABLE netflix AS SELECT * FROM read_parquet('s3://us-prd-motherduck-open-datasets/netflix/netflix_daily_top_10.parquet');

SHOW TABLES;
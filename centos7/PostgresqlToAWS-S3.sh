#!/bin/bash

DATE=$(date +%H-%M-%S)
BACKUP=db-$DATE.sql.gz


DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
DB_USER=$4
AWS_SECRET=$5
BUCKET_NAME=$6

pg_dump -h $DB_HOST -U $DB_USER $DB_NAME | gzip > /tmp/$BACKUP
# mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=AKIAUYY27W3G4MIZ2NBQ && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
echo "Uploading your Postgresql：$BACKUP backup to AWS S3" && \
aws s3 cp /tmp/$BACKUP s3://$BUCKET_NAME/$BACKUP
#!/bin/bash
set -e

echo "Waiting for primary to be ready..."
until pg_isready -h postgres-primary -p 5432 -U replicator; do
  echo "Still waiting for primary..."
  sleep 2
done

echo "Cleaning old data..."
rm -rf /var/lib/postgresql/data/*

echo "Cloning data from primary..."
PGPASSWORD=replicatorpass pg_basebackup -h postgres-primary -D /var/lib/postgresql/data -U replicator -Fp -Xs -P -R

echo "Replica initialized. Starting PostgreSQL..."
exec docker-entrypoint.sh postgres

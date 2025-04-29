-- Create replication user
CREATE ROLE replicator WITH REPLICATION LOGIN PASSWORD 'replicatorpass';

-- Allow replication connections in pg_hba.conf
-- This part must be configured separately via Dockerfile or mounted pg_hba.conf
-- In Docker image, we usually do it via postgresql.conf or custom entrypoint

#!/bin/bash
psql -U postgres -p 5432 --command="CREATE USER cdp4 WITH PASSWORD 'cdp4';"
psql -U postgres -p 5432 --command="ALTER USER cdp4 WITH SUPERUSER;"
psql -U postgres -p 5432 --command="GRANT pg_signal_backend TO cdp4;"
psql -U postgres -p 5432 --command="CREATE DATABASE cdp4manage WITH OWNER = cdp4 ENCODING 'UTF-8';"
psql -U postgres -p 5432 -d cdp4manage --command="CREATE EXTENSION IF NOT EXISTS hstore;"
psql -U postgres -p 5432 -d cdp4manage --command="CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\";"
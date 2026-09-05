/*
=============================================================
Create Database and Schemas
=============================================================

Script Purpose:
    This script creates a new database named 'DataWarehouse'.
    If the database already exists, it is dropped and recreated.

    The script also creates three schemas within the database:
    'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will DROP the entire 'DataWarehouse'
    database if it exists.

    All data in the database will be permanently deleted.
    Proceed with caution and ensure you have proper backups
    before running this script.
*/

-- =============================================================
-- Drop and recreate the 'DataWarehouse' database
-- =============================================================

-- PostgreSQL does not support DROP DATABASE while connected
-- to the database being dropped.
-- Therefore, make sure you are connected to another database,
-- such as 'postgres', before running this section.

DROP DATABASE IF EXISTS "DataWarehouse";

-- Create the 'DataWarehouse' database
CREATE DATABASE "DataWarehouse";


-- =============================================================
-- Connect to the DataWarehouse database
-- =============================================================

-- If using psql:
\c "DataWarehouse"


-- =============================================================
-- Create Schemas
-- =============================================================

CREATE SCHEMA IF NOT EXISTS bronze;

CREATE SCHEMA IF NOT EXISTS silver;

CREATE SCHEMA IF NOT EXISTS gold;

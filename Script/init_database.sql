/*
------------------------------------------------------
Create Database and Schemas
-------------------------------------------------------

Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exists.
Additionally, the script sets up three schemas
within the database: 'bronze', 'silver', and 'gold'.

*/

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
    BEGIN
        CREATE DATABASE DataWarehouse;
    END;

    USE DataWarehouse;


CREATE SCHEMA bronze;
go
CREATE SCHEMA silver;
go
CREATE SCHEMA gold;

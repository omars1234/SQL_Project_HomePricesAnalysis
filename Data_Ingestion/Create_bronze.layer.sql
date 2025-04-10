/*
=============================================================
Create bronze layer table
=============================================================
Script Purpose:
    This script creates the bronze layer table for the DB named 'HomePricesProjectDataWarehouse' after checking if it already exists. 
    If the Tables exists, it is dropped and recreated.
	
WARNING:
    Running this script will drop the entire 'Table' if it exists. 
    All data in the Tables will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/
----=====================================-----

IF OBJECT_ID('bronze.HousePrices_info', 'U') IS NOT NULL
    DROP TABLE bronze.HousePrices_info;
GO

CREATE TABLE bronze.HousePrices_info (
datesold  DATE,
postcode NVARCHAR(10),
price  INT,
propertyType NVARCHAR(10),
bedrooms NVARCHAR(10)
);
GO

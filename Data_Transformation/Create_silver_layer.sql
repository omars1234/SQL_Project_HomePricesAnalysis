

/*
=============================================================
Create silver layer table
=============================================================
Script Purpose:
    This script creates the silver layer table for the DB named 'HomePricesProjectDataWarehouse' after checking if it already exists. 
    If the Tables exists, it is dropped and recreated.
	
WARNING:
    Running this script will drop the entire 'Table' if it exists. 
    All data in the Tables will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/
----=====================================-----

IF OBJECT_ID('silver.HousePrices_info', 'U') IS NOT NULL
    DROP TABLE silver.HousePrices_info;
GO

CREATE TABLE silver.HousePrices_info (
Date_Sold  DATE,
Region_Postcode NVARCHAR(10),
Property_Type NVARCHAR(10),
Number_Of_Bedrooms NVARCHAR(10),
price  INT,
);
GO
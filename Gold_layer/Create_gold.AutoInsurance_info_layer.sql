
/*
=============================================================
Create gold layer table
=============================================================
Script Purpose:
    This script creates the gold layer table for the DB named 'HomePricesProjectDataWarehouse' after checking if it already exists. 
    If the Tables exists, it is dropped and recreated.
	
WARNING:
    Running this script will drop the entire 'Table' if it exists. 
    All data in the Tables will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/
----=====================================-----

USE HomePricesProjectDataWarehouse;

IF OBJECT_ID('gold.HousePrices_info', 'U') IS NOT NULL
    DROP TABLE gold.HousePrices_info;
GO

CREATE VIEW gold.HousePrices_info AS
SELECT
		Date_Sold,	
	    Region_Postcode ,
	    Property_Type,
	    Number_Of_Bedrooms,
		Price,
		Year_DATE,
		Month_Name,
		Day_Name,
		Average_Price_per_Bedroom

FROM silver.HousePrices_info;
GO

SELECT * FROM gold.HousePrices_info;


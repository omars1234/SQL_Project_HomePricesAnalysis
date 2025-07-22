
USE HomePricesProjectDataWarehouse;

TRUNCATE TABLE silver.HousePrices_info;
		PRINT '>> Inserting Data Into: silver.HousePrices_info';

INSERT INTO silver.HousePrices_info (
		Date_Sold,
	    Region_Postcode ,
	    Property_Type,
	    Number_Of_Bedrooms,
		Price,
		Year_DATE,
		Month_Name,
		Day_Name,
		Average_Price_per_Bedroom
	)

SELECT  
	datesold AS Date_Sold,
	TRIM(postcode) AS Region_Postcode ,
	TRIM(propertyType) AS Property_Type,
	bedrooms AS Number_Of_Bedrooms,
	price As Price,
	YEAR(datesold) As Year_DATE,
	DATENAME(month, datesold) AS Month_Name,
	DATENAME(WEEKDAY, datesold) AS Day_Name,
	price/NULLIF(bedrooms,0) As Average_Price_per_Bedroom

FROM bronze.HousePrices_info;

SELECT * FROM silver.HousePrices_info;
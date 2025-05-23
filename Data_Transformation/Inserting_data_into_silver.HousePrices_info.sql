


TRUNCATE TABLE silver.HousePrices_info;
		PRINT '>> Inserting Data Into: silver.HousePrices_info';

INSERT INTO silver.HousePrices_info (
		Date_Sold,
	    Region_Postcode ,
	    Property_Type,
	    Number_Of_Bedrooms,
		Price
	)

SELECT  
	datesold AS Date_Sold,
	TRIM(postcode) AS Region_Postcode ,
	TRIM(propertyType) AS Property_Type,
	TRIM(bedrooms) AS Number_Of_Bedrooms,
	price As Price

FROM bronze.HousePrices_info;
  

SELECT * FROM silver.HousePrices_info;
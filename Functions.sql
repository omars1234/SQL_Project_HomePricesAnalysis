
---====================================================
SELECT * FROM bronze.HousePrices_info;
---====================================================
SELECT 
	propertyType ,COUNT(DISTINCT  propertyType) 
FROM bronze.HousePrices_info 
GROUP BY propertyType; -- convert to Property_Type
---====================================================
SELECT 
	bedrooms ,COUNT(DISTINCT  bedrooms) 
FROM bronze.HousePrices_info 
GROUP BY bedrooms; -- convert to number_Of_Bedrooms
---====================================================
SELECT
	postcode, COUNT(DISTINCT  postcode) 
FROM bronze.HousePrices_info 
GROUP BY postcode;  -- convert to Region_postcode
---====================================================
 ---- convert datesold to Date_Sold
 ---====================================================
SELECT Min(price),MAX(price) FROM bronze.HousePrices_info;  --Min and Max price
---====================================================

-- No Duplicate VALUES,
-- No Null Values


SELECT 
	datesold AS Date_Sold,
	TRIM(postcode) AS Region_Postcode ,
	TRIM(propertyType) AS Property_Type,
	TRIM(bedrooms) AS Number_Of_Bedrooms,
	price As Price
FROM bronze.HousePrices_info;




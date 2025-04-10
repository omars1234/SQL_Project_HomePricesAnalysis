

-- USE HomePricesProjectDataWarehouse;


CREATE OR ALTER PROCEDURE bronze.load_bronze_layer AS
BEGIN
 DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME; 
 SET @batch_start_time = GETDATE();
		PRINT '================================================';
		PRINT 'Loading Bronze Layer';
		PRINT '================================================';

		PRINT '------------------------------------------------';
		PRINT 'Loading HousePrices_info Table';
		PRINT '------------------------------------------------';

		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: bronze.HousePrices_info';
        TRUNCATE TABLE bronze.HousePrices_info;
		PRINT '>> Inserting Data Into: bronze.HousePrices_info';

        BULK INSERT bronze.HousePrices_info
        FROM 'C:\Users\Omar\Desktop\Omar_Files\SQL_Projects\SQL_Project_HomePricesAnalysis\SQL_Project_HomePricesAnalysis\Data_Set\raw_sales.csv'
        WITH (
			  FIRSTROW=2,
			  FIELDTERMINATOR = ',',
			  TABLOCK
			 );
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

END

USE HomePricesProjectDataWarehouse
EXEC bronze.load_bronze_layer;

SELECT * FROM bronze.HousePrices_info;
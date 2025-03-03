-- Delete/truncate all rows of the 'bronze.crm_cust_info' table
TRUNCATE TABLE bronze.crm_cust_info;

-- Insert data to the 'bronze.crm_cust_info' table
BULK INSERT bronze.crm_cust_info
FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_crm\cust_info.csv"
WITH (
    FIRST_ROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

-- Delete/truncate all rows of the 'bronze.crm_prd_info' table
TRUNCATE TABLE bronze.crm_prd_info;

-- Insert data to the 'bronze.crm_prd_info' table
BULK INSERT bronze.crm_prd_info
FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_crm\prd_info.csv"
WITH (
    FIRST_ROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

-- Delete/truncate all rows of the 'bronze.crm_sales_details' table
TRUNCATE TABLE bronze.crm_sales_details;

-- Insert data to the 'bronze.crm_sales_details' table
BULK INSERT bronze.crm_sales_details
FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_crm\sales_details.csv"
WITH (
    FIRST_ROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);


-- Insert data to the 'bronze.erp_cust_az12' table
BULK INSERT bronze.erp_cust_az12
FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv"
WITH (
    FIRST_ROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
    PRINT '======================================================================';
    PRINT 'Loading Bronze Layer';
    PRINT '======================================================================';
    
    PRINT '----------------------------------------------------------------------';
    PRINT 'Loading CRM Tables'
    PRINT '----------------------------------------------------------------------';

    PRINT '>> Truncating Table: bronze.crm_cust_info'
    TRUNCATE TABLE bronze.crm_cust_info;

    PRINT '>> Inserting Data Into: bronze.crm_cust_info'
    BULK INSERT bronze.crm_cust_info
    FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_crm\cust_info.csv"
    WITH (
        FIRST_ROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    PRINT '>> Truncating Table: bronze.crm_prd_info'
    TRUNCATE TABLE bronze.crm_prd_info;

    PRINT '>> Inserting Data Into: bronze.crm_prd_info'
    BULK INSERT bronze.crm_prd_info
    FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_crm\prd_info.csv"
    WITH (
        FIRST_ROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    PRINT '>> Truncating Table: bronze.crm_sales_details'
    TRUNCATE TABLE bronze.crm_sales_details;

    PRINT '>> Inserting Data Into: bronze.crm_sales_details'
    BULK INSERT bronze.crm_sales_details
    FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_crm\sales_details.csv"
    WITH (
        FIRST_ROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    PRINT '----------------------------------------------------------------------';
    PRINT 'Loading ERP Tables'
    PRINT '----------------------------------------------------------------------';

    PRINT '>> Truncating Table: bronze.erp_cust_az12'
    TRUNCATE TABLE bronze.erp_cust_az12;

    PRINT '>> Inserting Data Into: bronze.erp_cust_az12'
    BULK INSERT bronze.erp_cust_az12
    FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv"
    WITH (
        FIRST_ROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    PRINT '>> Truncating Table: bronze.erp_loc_a101'
    TRUNCATE TABLE bronze.erp_loc_a101;

    PRINT '>> Inserting Data Into: bronze.erp_cust_az12'
    BULK INSERT bronze.erp_loc_a101
    FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv"
    WITH (
        FIRST_ROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );

    PRINT '>> Truncating Table: bronze.erp_px_cat_g1v2'
    TRUNCATE TABLE bronze.erp_px_cat_g1v2;

    PRINT '>> Inserting Data Into: bronze.erp_px_cat_g1v2'
    BULK INSERT bronze.erp_px_cat_g1v2
    FROM "Z:\home\khuselo\my_work\side_things\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv"
    WITH (
        FIRST_ROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
END
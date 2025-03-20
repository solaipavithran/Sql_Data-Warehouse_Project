-----------------------------------------------------------------------------------------------------
IF OBJECT_ID ('bronze.crm_cust_info','U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info(
		cst_id INT,
		cst_key NVARCHAR(50), --- USE NARCHAR ONLY JAPANISE KANGI OR KOREAN LANGUAGE
		cst_firstname NVARCHAR(50),
		cst_lastname NVARCHAR(50),
		cst_marital_status CHAR,
		cst_gndr CHAR,
		cst_create_date DATE
	);

IF OBJECT_ID ('bronze.crm_prd_info','U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info(
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_cost NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_line NVARCHAR(50),
	prd_start_dt DATE,
	prd_end_dt DATE
);
IF OBJECT_ID ('bronze.crm_sales_details','U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;

CREATE TABLE bronze.crm_sales_details(
	sls_ord_num INT ,
	sls_prd_key NVARCHAR(50),
	sls_cust_id BIGINT,
	sls_order_dt BIGINT,
	sls_ship_dt BIGINT,
	sls_due_dt BIGINT,
	sls_sales BIGINT,
	sls_quantity INT,
	sls_price BIGINT
);

---------------------------------------------------------------------------------------------------------
IF OBJECT_ID ('bronze.erp_cust_AZ12','U') IS NOT NULL
	DROP TABLE bronze.erp_cust_AZ12;

CREATE TABLE bronze.erp_cust_AZ12(
	_cid NVARCHAR(50),
	b_date DATE,
	gen CHAR
);

IF OBJECT_ID ('bronze.erp_loc_A101','U') IS NOT NULL
	DROP TABLE bronze.erp_loc_A101;

CREATE TABLE bronze.erp_loc_A101(
	cid NVARCHAR(50),
	cntry NVARCHAR(50)
);

IF OBJECT_ID ('bronze.erp_px_cat_g1v2','U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_g1v2;

CREATE TABLE bronze.erp_px_cat_g1v2(
	id NVARCHAR(50),
	cat NVARCHAR(50),
	subcat NVARCHAR(50),
	maintenance NVARCHAR(50)
);

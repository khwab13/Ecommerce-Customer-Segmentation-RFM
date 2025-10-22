DROP TABLE IF EXISTS sales_data;

CREATE TABLE sales_data (
    TransactionNo VARCHAR(50),
    Date DATE,
    ProductNo VARCHAR(50),
    ProductName VARCHAR(255),
    Price DECIMAL(10,2),
    Quantity INT,
    CustomerNo VARCHAR(50),
    Country VARCHAR(100),
    TotalSales DECIMAL(12,2),
    YearMonth VARCHAR(7)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_clean.csv'
INTO TABLE sales_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(TransactionNo, Date, ProductNo, ProductName, Price, Quantity, CustomerNo, Country, TotalSales, YearMonth);

select * from sales_data;

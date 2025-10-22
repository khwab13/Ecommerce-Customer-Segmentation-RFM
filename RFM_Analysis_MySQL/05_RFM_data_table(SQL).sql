CREATE TABLE rfm_data AS
SELECT 
    r.CustomerNo,
    r.Recency,
    f.Frequency,
    m.Monetary
FROM
    (SELECT 
        CustomerNo,
        DATEDIFF(
        DATE_ADD((SELECT MAX(Date) FROM sales_data), INTERVAL 1 DAY), 
        MAX(Date)
    ) AS Recency
     FROM sales_data
     GROUP BY CustomerNo) AS r
JOIN
    (SELECT 
        CustomerNo,
        COUNT(DISTINCT TransactionNo) AS Frequency
     FROM sales_data
     GROUP BY CustomerNo) AS f
ON r.CustomerNo = f.CustomerNo
JOIN
    (SELECT 
        CustomerNo,
        ROUND(SUM(TotalSales), 2) AS Monetary
     FROM sales_data
     GROUP BY CustomerNo) AS m
ON r.CustomerNo = m.CustomerNo;

SELECT * FROM rfm_data
order by Monetary desc
LIMIT 10;

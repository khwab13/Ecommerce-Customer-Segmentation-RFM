SELECT 
    CustomerNo,
    COUNT(DISTINCT TransactionNo) AS Frequency
FROM sales_data
GROUP BY CustomerNo
order by Frequency desc;

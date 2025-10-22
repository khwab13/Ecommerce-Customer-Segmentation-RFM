SELECT 
    CustomerNo,
    DATEDIFF(
        DATE_ADD((SELECT MAX(Date) FROM sales_data), INTERVAL 1 DAY), 
        MAX(Date)
    ) AS Recency
FROM sales_data
GROUP BY CustomerNo
order by Recency desc;


SELECT 
    CustomerNo,
    ROUND(SUM(TotalSales), 2) AS Monetary
FROM sales_data
GROUP BY CustomerNo
order by Monetary desc;

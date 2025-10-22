ALTER TABLE rfm_scores ADD COLUMN Segment VARCHAR(30);

UPDATE rfm_scores
SET Segment = CASE
    WHEN RFM_Total >= 12 THEN 'Champions'
    WHEN RFM_Total BETWEEN 9 AND 11 THEN 'Loyal Customers'
    WHEN RFM_Total BETWEEN 6 AND 8 THEN 'Potential Loyalists'
	ELSE 'At Risk'
END;

SELECT Segment, COUNT(*) AS CustomerCount
FROM rfm_scores
GROUP BY Segment
ORDER BY CustomerCount DESC;

SELECT * FROM rfm_scores;


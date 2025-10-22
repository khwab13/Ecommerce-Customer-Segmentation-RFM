CREATE TABLE rfm_scores AS
SELECT 
    CustomerNo,
    Recency,
    Frequency,
    Monetary,

    -- Recency: lower is better -> DESC for scoring
    NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,

    -- Frequency: higher is better
    NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,

    -- Monetary: higher is better
    NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score
FROM rfm_data;

ALTER TABLE rfm_scores ADD COLUMN RFM_Segment VARCHAR(10);
UPDATE rfm_scores 
SET RFM_Segment = CONCAT(R_Score, F_Score, M_Score);

ALTER TABLE rfm_scores ADD COLUMN RFM_Total INT;
UPDATE rfm_scores 
SET RFM_Total = R_Score + F_Score + M_Score;


select * from rfm_scores
order by CustomerNo ;


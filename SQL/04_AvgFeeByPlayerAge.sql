/*
===============================================================================
Script:       04_AvgFeeByPlayerAge.sql
Project:      Football Transfer Market Financial Analysis (2015-2026)
Author:       Łukasz Prus / Lpru260
Description:  Analyzes the relationship between player age at acquisition and fee paid.
              Constructs the market "prime valuation curve" to detect where resale 
              potential peaks and when investment value starts to sharply decline.
===============================================================================
*/

SELECT 
    FLOOR(DATEDIFF(day, p.date_of_birth, t.transfer_date) / 365.25) AS Age_At_Transfer,
    AVG(TRY_CAST(t.transfer_fee AS decimal(18,2))) AS Avg_Transfer_Fee
FROM dbo.players p
INNER JOIN dbo.transfers t
    ON p.player_id = t.player_id
WHERE TRY_CAST(t.transfer_fee AS decimal(18,2)) > 0
  AND p.date_of_birth IS NOT NULL
  AND (transfer_date BETWEEN '2015-01-01' AND GETDATE())
  AND FLOOR(DATEDIFF(day, p.date_of_birth, t.transfer_date) / 365.25) BETWEEN 15 AND 45
GROUP BY FLOOR(DATEDIFF(day, p.date_of_birth, t.transfer_date) / 365.25)
ORDER BY Age_At_Transfer

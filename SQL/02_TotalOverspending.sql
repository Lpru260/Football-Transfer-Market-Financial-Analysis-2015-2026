/*
===============================================================================
Script:       02_TotalOverspending.sql
Project:      Football Transfer Market Financial Analysis (2015-2026)
Author:       Łukasz Prus / Lpru260
Description:  Evaluates club negotiation efficiency by comparing actual transfer 
              fees paid against market valuations at signing. Identifies aggressive 
              premiums ("overspenders") versus bargain acquisitions ("smart buyers").
===============================================================================
*/
SELECT 
    c.name AS Buying_Club,
    COUNT(*) AS Transfers_Count,
    SUM(TRY_CAST(t.transfer_fee AS decimal(18,2)) - TRY_CAST(t.market_value_in_eur AS decimal(18,2))) AS Total_Overspending,
    AVG(TRY_CAST(t.transfer_fee AS decimal(18,2)) - TRY_CAST(t.market_value_in_eur AS decimal(18,2))) AS Avg_Overspending_Per_Player
FROM dbo.transfers t
INNER JOIN Transfermarkt.dbo.clubs c 
    ON t.to_club_id = c.club_id
WHERE TRY_CAST(t.transfer_fee AS decimal(18,2)) IS NOT NULL
  AND TRY_CAST(t.market_value_in_eur AS decimal(18,2)) IS NOT NULL
  AND TRY_CAST(t.transfer_fee AS decimal(18,2)) > 0
  AND (t.transfer_date BETWEEN '2015-01-01' AND GETDATE())
GROUP BY c.club_id, c.name
HAVING COUNT(*) > 15
ORDER BY Total_Overspending DESC;
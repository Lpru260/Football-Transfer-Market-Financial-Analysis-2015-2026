/*
===============================================================================
Script:       03_TotalOverspending.sql
Project:      Football Transfer Market Financial Analysis (2015-2026)
Author:       Łukasz Prus / Lpru260
Description:  Evaluates club negotiation efficiency by comparing actual transfer 
              fees paid against market valuations at signing. Identifies aggressive 
              premiums ("overspenders") versus bargain acquisitions ("smart buyers").
===============================================================================
*/

SELECT 
    to_club_name AS Buying_Club,
    COUNT(*) AS Transfers_Count,
    SUM(TRY_CAST(transfer_fee AS decimal(18,2)) - TRY_CAST(market_value_in_eur AS decimal(18,2))) AS Total_Overspending,
    AVG(TRY_CAST(transfer_fee AS decimal(18,2)) - TRY_CAST(market_value_in_eur AS decimal(18,2))) AS Avg_Overspending_Per_Player
FROM dbo.transfers
WHERE TRY_CAST(transfer_fee AS decimal(18,2)) IS NOT NULL 
  AND TRY_CAST(market_value_in_eur AS decimal(18,2)) IS NOT NULL
  AND TRY_CAST(transfer_fee AS decimal(18,2)) > 0
  AND (transfer_date BETWEEN '2015-01-01' AND GETDATE())
GROUP BY to_club_name
HAVING COUNT(*) > 15
ORDER BY Total_Overspending DESC
/*
===============================================================================
Script:       06_YearlyMarketTrends.sql
Project:      Football Transfer Market Financial Analysis (2015-2026)
Author:       Łukasz Prus / Lpru260
Description:  Analyzes macroeconomic market dynamics and year-over-year trends 
              per transfer season. Aggregates total expenditure, trading volume, 
              average transfer fees, and overall market overspending metrics.
===============================================================================
*/
SELECT 
    t.transfer_season,
    
    COUNT(*) AS total_transfers_count,
    SUM(TRY_CAST(t.transfer_fee AS decimal(18,2))) AS total_spent,
    AVG(TRY_CAST(t.transfer_fee AS decimal(18,2))) AS avg_fee,

    SUM(CASE 
        WHEN TRY_CAST(t.market_value_in_eur AS decimal(18,2)) IS NOT NULL 
        THEN TRY_CAST(t.transfer_fee AS decimal(18,2)) - TRY_CAST(t.market_value_in_eur AS decimal(18,2))
        ELSE 0 
    END) AS total_overspending,

    AVG(CASE 
        WHEN TRY_CAST(t.market_value_in_eur AS decimal(18,2)) IS NOT NULL 
        THEN TRY_CAST(t.transfer_fee AS decimal(18,2)) - TRY_CAST(t.market_value_in_eur AS decimal(18,2))
        ELSE NULL 
    END) AS avg_overspending_per_player

FROM dbo.transfers t
WHERE TRY_CAST(t.transfer_fee AS decimal(18,2)) > 0
  AND t.to_club_id IS NOT NULL
  AND t.transfer_date >= '2015-01-01'
  AND t.transfer_season != '14/15'

GROUP BY t.transfer_season
ORDER BY t.transfer_season
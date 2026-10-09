/*
===============================================================================
Script:       01_ClubFinancialBalance.sql
Project:      Football Transfer Market Financial Analysis (2015-2026)
Author:       Łukasz Prus / Lpru260
Description:  Consolidates buying expenditures and selling revenues into a single
              cash flow model using UNION ALL. Computes net transfer balance per club.
              Filters out non-operating market outliers by enforcing active trading 
              thresholds (minimum turnover >= €50M).
===============================================================================
*/
SELECT 
    c.name AS club_name,
    SUM(t.Total_Spent) AS Total_Spent,
    SUM(t.Total_Income) AS Total_Income,
    SUM(t.Total_Income) - SUM(t.Total_Spent) AS Balance
FROM (

    SELECT 
        to_club_id AS club_id,
        TRY_CAST(transfer_fee AS DECIMAL(18,2)) AS Total_Spent,
        0 AS Total_Income
    FROM dbo.transfers
    WHERE transfer_date >= '2015-01-01'
      AND TRY_CAST(transfer_fee AS DECIMAL(18,2)) > 0
      AND to_club_id IS NOT NULL

    UNION ALL


    SELECT 
        from_club_id AS club_id,
        0 AS Total_Spent,
        TRY_CAST(transfer_fee AS DECIMAL(18,2)) AS Total_Income
    FROM dbo.transfers
    WHERE transfer_date >= '2015-01-01'
      AND TRY_CAST(transfer_fee AS DECIMAL(18,2)) > 0
      AND from_club_id IS NOT NULL
) t
INNER JOIN Transfermarkt.dbo.clubs c 
ON t.club_id = c.club_id

GROUP BY c.name
HAVING SUM(t.Total_Spent) > 0 
   AND SUM(t.Total_Income) > 0 
   AND (SUM(t.Total_Spent) + SUM(t.Total_Income)) >= 50000000
ORDER BY Balance DESC;
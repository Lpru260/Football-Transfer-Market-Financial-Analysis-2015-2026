/*
===============================================================================
Script:       01_club_financial_balance.sql
Project:      Football Transfer Market Financial Analysis (2015-2025)
Author:       Łukasz Prus / Lpru260
Description:  Consolidates buying expenditures and selling revenues into a single
              cash flow model using UNION ALL. Computes net transfer balance per club.
              Filters out non-operating market outliers by enforcing active trading 
              thresholds (minimum turnover >= €50M).
===============================================================================
*/

SELECT 
    club_name,
    SUM(Total_Spent) AS Total_Spent,
    SUM(Total_Income) AS Total_Income,
    SUM(Total_Income) - SUM(Total_Spent) AS Balance
FROM (
    SELECT 
        to_club_name AS club_name,
        TRY_CAST(transfer_fee AS DECIMAL(18,2)) AS Total_Spent,
        0 AS Total_Income
    FROM dbo.transfers
    WHERE transfer_date >= '2015-01-01'
      AND TRY_CAST(transfer_fee AS DECIMAL(18,2)) > 0
      AND to_club_name IS NOT NULL

    UNION ALL

    SELECT 
        from_club_name AS club_name,
        0 AS Total_Spent,
        TRY_CAST(transfer_fee AS DECIMAL(18,2)) AS Total_Income
    FROM dbo.transfers
    WHERE transfer_date >= '2015-01-01'
      AND TRY_CAST(transfer_fee AS DECIMAL(18,2)) > 0
      AND from_club_name IS NOT NULL
) t
GROUP BY club_name
HAVING SUM(Total_Spent) > 0 
   AND SUM(Total_Income) > 0
   AND (SUM(Total_Spent) + SUM(Total_Income)) >= 50000000
ORDER BY Balance DESC;
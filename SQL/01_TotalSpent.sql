/*
===============================================================================
Script:       01_TotalSpent.sql
Project:      Football Transfer Market Financial Analysis (2015-2025)
Author:       Łukasz Prus / Lpru260
Description:  Calculates the total transfer expenditure per club.
              Filters out free transfers, zero-value loans, and transactions
              predating modern market inflation (pre-2015).
===============================================================================
*/

SELECT to_club_name,
SUM(Try_Cast(transfer_fee AS Decimal(18,2)))  AS Total_Spent
FROM dbo.transfers

WHERE (transfer_date BETWEEN '2021-01-01' AND GETDATE() ) 
AND TRY_CAST(transfer_fee AS decimal(18, 2)) > 0 
GROUP BY to_club_name
ORDER BY Total_Spent DESC
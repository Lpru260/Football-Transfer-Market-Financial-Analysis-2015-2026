/*
===============================================================================
Script:       02_TotalIncome.sql
Project:      Football Transfer Market Financial Analysis (2015-2025)
Author:       Łukasz Prus / Lpru260
Description:  Calculates total revenue generated from player departures.
              Used alongside total expenditures to determine club Net Spend 
              and evaluate overall player trading sustainability.
===============================================================================
*/

SELECT from_club_name,
SUM(Try_Cast(transfer_fee AS Decimal(18,2))) AS Total_Income
FROM dbo.transfers

WHERE (transfer_date BETWEEN '2021-01-01' AND GETDATE() ) 
AND TRY_CAST(transfer_fee AS decimal(18, 2)) > 0 

GROUP BY from_club_name
ORDER BY Total_Income DESC
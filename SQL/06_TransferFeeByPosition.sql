/*
===============================================================================
Script:       06_TransferFeeByPosition.sql
Project:      Football Transfer Market Financial Analysis (2015-2025)
Author:       Łukasz Prus / Lpru260
Description:  Measures pricing disparities across playing positions (Attack, 
              Midfield, Defence, Goalkeeper). Shows how much more clubs pay 
              for attackers compared to defenders and goalkeepers.
===============================================================================
*/

SELECT p.position,
COUNT(*) AS Total_Transfers,
AVG(TRY_CAST(t.transfer_fee AS DECIMAL(18,2))) Avg_Transfer_Fee
FROM dbo.players p

INNER JOIN dbo.transfers t
ON p.player_id = t.player_id
WHERE (transfer_date BETWEEN '2021-01-01' AND GETDATE())
  AND TRY_CAST(t.transfer_fee AS decimal(18,2)) > 0
  AND p.position IS NOT NULL
  AND p.position<> 'Missing'

GROUP BY p.position
ORDER BY Avg_Transfer_Fee DESC
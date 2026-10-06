SELECT 
DATEDIFF(YEAR, p.date_of_birth, t.transfer_date) AS Age_At_Transfer,
AVG(TRY_CAST(t.transfer_fee AS decimal(18,2))) AS Avg_Transfer_Fee

FROM dbo.players p

INNER JOIN dbo.transfers  t
ON p.player_id = t.player_id

WHERE TRY_CAST(t.transfer_fee AS decimal(18,2)) > 0
  AND p.date_of_birth IS NOT NULL
  AND (transfer_date BETWEEN '2021-01-01' AND GETDATE())
  AND (DATEDIFF(YEAR, p.date_of_birth, t.transfer_date) >15)
  GROUP BY DATEDIFF(YEAR, p.date_of_birth, t.transfer_date)

 ORDER BY Age_At_Transfer

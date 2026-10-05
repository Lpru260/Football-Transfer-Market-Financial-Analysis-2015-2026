SELECT compe.name,
COUNT(t.to_club_id) AS Total_Transfers,
SUM(TRY_CAST(t.transfer_fee AS decimal(18,2))) AS Total_Spent,
AVG(TRY_CAST(t.transfer_fee AS decimal(18,2))) AS Avg_Spent_Per_Transfer
FROM dbo.clubs c

INNER JOIN dbo.transfers t
ON c.club_id = t.to_club_id

INNER JOIN dbo.competitions compe
ON compe.competition_id = c.domestic_competition_id

WHERE TRY_CAST(t.transfer_fee AS decimal(18,2)) > 0
GROUP BY compe.name
ORDER BY Total_Spent DESC
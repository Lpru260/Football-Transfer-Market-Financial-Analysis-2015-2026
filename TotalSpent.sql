SELECT to_club_name,
SUM(Try_Cast(transfer_fee AS Decimal(18,2)))  AS Total_Spent
FROM dbo.transfers

WHERE (transfer_date BETWEEN '2021-01-01' AND GETDATE() ) 
AND TRY_CAST(transfer_fee AS decimal(18, 2)) > 0 
GROUP BY to_club_name
ORDER BY Total_Spent DESC
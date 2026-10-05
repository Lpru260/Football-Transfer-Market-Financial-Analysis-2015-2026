SELECT from_club_name,
SUM(Try_Cast(transfer_fee AS Decimal(18,2))) AS Total_Income -- change nvchar to number and sum t.i.
FROM dbo.transfers

WHERE (transfer_date BETWEEN '2021-01-01' AND GETDATE() ) --5 years and not future transfer
AND TRY_CAST(transfer_fee AS decimal(18, 2)) > 0 --change number again without free transfers

GROUP BY from_club_name
ORDER BY Total_Income DESC
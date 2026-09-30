SELECT 
    to_club_name AS Buying_Club,
    COUNT(*) AS Transfers_Count,
    SUM(TRY_CAST(transfer_fee AS decimal(18,2)) - TRY_CAST(market_value_in_eur AS decimal(18,2))) AS Total_Overspending,
    AVG(TRY_CAST(transfer_fee AS decimal(18,2)) - TRY_CAST(market_value_in_eur AS decimal(18,2))) AS Avg_Overspending_Per_Player
FROM dbo.transfers
WHERE TRY_CAST(transfer_fee AS decimal(18,2)) IS NOT NULL 
  AND TRY_CAST(market_value_in_eur AS decimal(18,2)) IS NOT NULL
GROUP BY to_club_name
ORDER BY Total_Overspending DESC
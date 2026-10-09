/*
===============================================================================
Script:      06_DimClubsMapping.sql
Project:     Football Transfer Market Financial Analysis (2015–2026)
Author:      Łukasz Prus / Lpru260
Description: Generates a club dimension / lookup reference dataset mapping 
             each club to its domestic competition code and competition ID. 
             Used in Excel via lookup formulas (XLOOKUP) to establish 
             relational integrity between financial metrics and league contexts.
===============================================================================
*/

SELECT
    cl.name AS club_name,
    cl.domestic_competition_id,
    com.competition_code AS league_code

FROM Transfermarkt.dbo.clubs cl

INNER JOIN Transfermarkt.dbo.competitions com
    ON cl.domestic_competition_id = com.competition_id
ORDER BY cl.name
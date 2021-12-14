
-- SQL Querry:
SELECT DISTINCT [Launch_Site] FROM [Online_Business_sales].[dbo].[Spacex]
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT TOP 15 [Booster_Version] FROM [Online_Business_sales].[dbo].[Spacex]
----------------------------------------------------------------------------------------------------------------------------------------------------------
ALTER TABLE [Online_Business_sales].[dbo].[Spacex] ALTER COLUMN [PAYLOAD_MASS_KG] INT;
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT SUM([PAYLOAD_MASS_KG]) FROM [Online_Business_sales].[dbo].[Spacex] WHERE [Customer] like 'NASA (CRS)'
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT AVG([PAYLOAD_MASS_KG]) FROM [Online_Business_sales].[dbo].[Spacex] WHERE [Booster_Version] = 'F9v1.1'
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT MIN([Date]) FROM [Online_Business_sales].[dbo].[Spacex] WHERE [Landing_Outcome] like 'Success(droneship)'
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT [Booster_Version] FROM [Online_Business_sales].[dbo].[Spacex] WHERE ([Landing_Outcome] like'Success(groundpad)') AND ([PAYLOAD_MASS_KG]>4000) AND ([PAYLOAD_MASS_KG]<6000)
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT (SELECT Count([Mission_Outcome]) FROM [Online_Business_sales].[dbo].[Spacex] WHERE [Mission_Outcome] LIKE '%Success%') AS Successful_Mission_Outcomes , (SELECT Count(Mission_Outcome) from [Online_Business_sales].[dbo].[Spacex] where Mission_Outcome LIKE '%Failure%') as Failure_Mission_Coutcomes
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT DISTINCT [Booster_Version], MAX([PAYLOAD_MASS_KG]) AS [MaximumPayloadMass] FROM [Online_Business_sales].[dbo].[Spacex] GROUP BY [Booster_Version] ORDER BY [MaximumPayloadMass] DESC
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT DATENAME(month, DATEADD(month, MONTH(CONVERT(date, Date, 105)), 0)- 1) AS Month, [Booster_Version], [Launch_Site], [Landing_Outcome]
FROM [Online_Business_sales].[dbo].[Spacex]
WHERE ([Landing_Outcome] LIKE N'%Success %') AND (YEAR(CONVERT(date, Date, 105)) = '2015')
----------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT COUNT(Landing_Outcome)  FROM [Online_Business_sales].[dbo].[Spacex]  WHERE  (Landing_Outcome LIKE  '%Success%')  AND (Date > '04-06-2010')  AND (Date < '20-03-2017')
----------------------------------------------------------------------------------------------------------------------------------------------------------

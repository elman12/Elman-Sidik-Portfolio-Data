SELECT *
FROM `project-ngulik-data.campaignperformance.campaign`

SELECT 
channel,
FORMAT_DATE('%B', date) AS Bulan,
EXTRACT (MONTH FROM date) AS Angka_Bulan,
SUM(spend) AS Total_Spend,
SUM(revenue_generated) AS Total_Revenue,
ROUND( SUM (revenue_generated) / SUM (spend),2) AS Roas
FROM `project-ngulik-data.campaignperformance.campaign`
WHERE EXTRACT (YEAR FROM date) = 2024
AND EXTRACT (MONTH FROM date) IN (9,10)
GROUP BY Angka_Bulan, Bulan, channel
ORDER BY Angka_Bulan, Roas DESC


SELECT 
FORMAT_DATE('%B', date) AS Bulan,
SUM(spend) AS Total_Spend,
SUM(clicks) AS Total_Clicks,
SUM(conversions) AS Total_Conversions,
SAFE_DIVIDE(SUM(spend), SUM(clicks)) AS CPC,
SAFE_DIVIDE(SUM(spend), SUM(conversions)) AS CPA
FROM `project-ngulik-data.campaignperformance.campaign`
WHERE EXTRACT(YEAR FROM date) = 2024
AND EXTRACT(MONTH FROM date) IN (9,10)
GROUP BY Bulan
ORDER BY MIN(date)

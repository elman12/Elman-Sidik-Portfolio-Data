SELECT * 
FROM `project-ngulik-data.retailsalesinsights.Retail Sales Insights`


SELECT
FORMAT_DATE('%B',Date) AS Bulan,
EXTRACT (MONTH FROM Date) AS Urutan_Bulan,
SUM(`Quantity`) AS Jumlah_Penjualan,
SUM(`Total Amount`) AS Total_Penjualan,
FROM `project-ngulik-data.retailsalesinsights.Retail Sales Insights`
WHERE EXTRACT (YEAR FROM Date) = 2023
GROUP BY Urutan_Bulan, Bulan
ORDER BY Urutan_Bulan


SELECT
EXTRACT (QUARTER FROM Date) AS Quartal,
SUM (`Quantity`) AS Jumlah_Penjualan,
SUM (`Total Amount`) AS Total_Penjualan
FROM `project-ngulik-data.retailsalesinsights.Retail Sales Insights`
WHERE EXTRACT (YEAR FROM Date) = 2023
GROUP BY Quartal
ORDER BY Total_Penjualan DESC






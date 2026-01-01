SELECT * 
FROM `project-ngulik-data.retailsalesinsights.Retail Sales Insights`

#1.Descriptive Analytics, Apa yang sudah terjadi?

SELECT
FORMAT_DATE('%B',Date) AS Bulan,
EXTRACT (MONTH FROM Date) AS Urutan_Bulan,
SUM(`Quantity`) AS Jumlah_Penjualan,
SUM(`Total Amount`) AS Total_Penjualan,
FROM `project-ngulik-data.retailsalesinsights.Retail Sales Insights`
WHERE EXTRACT (YEAR FROM Date) = 2023
GROUP BY Urutan_Bulan, Bulan
ORDER BY Urutan_Bulan

#jawaban : Penjualan sepanjang tahun 2023 menunjukkan pola fluktuatif dengan beberapa bulan mengalami peningkatan signifikan, namun terjadi penurunan pada periode tertentu yang mengindikasikan adanya musim rendah penjualan (low season).


#2. Diagnostic Analytics, Kenapa hal itu bisa terjadi?

SELECT
EXTRACT (QUARTER FROM Date) AS Quartal,
SUM (`Quantity`) AS Jumlah_Penjualan,
SUM (`Total Amount`) AS Total_Penjualan
FROM `project-ngulik-data.retailsalesinsights.Retail Sales Insights`
WHERE EXTRACT (YEAR FROM Date) = 2023
GROUP BY Quartal
ORDER BY Total_Penjualan DESC

#Jawaban : Tren penjualan pada tahun 2023 mengalami fluktuasi, dengan total penjualan terendah terjadi pada kuartal III (Q3) sebesar 96.045. Penurunan tersebut disebabkan oleh rendahnya jumlah penjualan (quantity) pada kuartal III dibandingkan dengan kuartal lainnya, sehingga berdampak langsung pada rendahnya total penjualan.


#3. Predictive Analytics, Jika tren berlanjut, bagaimana penjualan 2024?

#Jawaban : Berdasarkan tren penjualan tahun 2023 yang menunjukkan fluktuasi, diperkirakan pola penjualan pada tahun 2024 akan cenderung serupa. Apabila tidak terdapat perubahan strategi, kuartal III berpotensi kembali menjadi periode dengan penjualan terendah.


#4. Prescriptive Analytics, How can we make it happen?

#Jawaban : Untuk mengatasi potensi penurunan penjualan pada kuartal III, perusahaan perlu menerapkan strategi penjualan yang lebih agresif pada periode tersebut. Strategi yang dapat dilakukan antara lain peningkatan aktivitas promosi, pemberian diskon atau bundling produk, serta fokus pada kategori produk dengan performa penjualan rendah. Selain itu, perusahaan juga dapat melakukan evaluasi harga dan meningkatkan strategi pemasaran agar minat beli konsumen tetap terjaga pada kuartal III.





SELECT CAST(SUM(LAT_N) AS Decimal(38,4))
FROM STATION 
WHERE LAT_N>38.7880 AND LAT_N<137.2345

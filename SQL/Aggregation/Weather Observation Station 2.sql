SELECT 
    CAST(ROUND(SUM(LAT_N), 2) AS dec(38, 2)) AS sum_of_lat_n,
    CAST(ROUND(SUM(LONG_W), 2) AS dec(38, 2)) AS sum_of_long_w
FROM 
    STATION;

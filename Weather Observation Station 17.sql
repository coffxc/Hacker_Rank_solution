WITH CTE AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (ORDER BY LAT_N ASC) AS row_num
    FROM 
        STATION
    WHERE 
        LAT_N > 38.7780
)

SELECT CAST(LONG_W AS Decimal(38,4))
FROM CTE
where row_num=1;

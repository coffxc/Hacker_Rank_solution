--MY SQL 

WITH CTE AS (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER () AS total_rows
    FROM 
        STATION
)

SELECT ROUND(LAT_N, 4)
FROM CTE
WHERE rn = CEILING(total_rows / 2.0);

--MS SQL Server


WITH CTE AS (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER () AS total_rows
    FROM 
        STATION
)

SELECT  CAST(ROUND(LAT_N,4) as dec(38,4))
FROM CTE
WHERE rn = CEILING(total_rows / 2.0);

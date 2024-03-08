-- MS SQL Server Solution

SELECT CAST(MIN(LAT_N) AS decimal(38,4))
FROM STATION
WHERE LAT_N>38.7780;

--BY Using CTE

WITH CTE AS (
SELECT LAT_N,
ROW_NUMBER() OVER (ORDER BY LAT_N ASC) row_num
FROM STATION
WHERE LAT_N>38.7780
    )
    SELECT CAST(LAT_N AS Decimal(38,4))
FROM CTE
Where row_num=1;

-- MY SQL server Solution

SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N>38.7780

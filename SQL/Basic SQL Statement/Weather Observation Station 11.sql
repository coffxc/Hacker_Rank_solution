SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY NOT LIKE '[aeiouAEIOU]%' OR CITY NOT LIKE '%[aeiouAEIOU]';
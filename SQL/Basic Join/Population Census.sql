SELECT SUM(C.POPULATION) Total_population
FROM CITY C
JOIN COUNTRY CO
ON C.CountryCode =CO.Code 
WHERE CO.CONTINENT="Asia";

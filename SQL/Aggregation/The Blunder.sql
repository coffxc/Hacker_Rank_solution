SELECT CAST(CEILING(AVG(CAST(Salary as float))-AVG(CAST(REPLACE(Salary,0,'')as float)))as int)
FROM EMPLOYEES

SELECT c.company_code,
       MAX(c.founder) AS max_founder,
       COUNT(DISTINCT e.lead_manager_code) AS lead_manager_count,
       COUNT(DISTINCT e.senior_manager_code) AS senior_manager_count,
       COUNT(DISTINCT e.manager_code) AS manager_count,
       COUNT(DISTINCT e.employee_code) AS employee_count
FROM Employee e
JOIN Company c ON e.company_code = c.company_code
GROUP BY c.company_code
ORDER BY c.company_code;

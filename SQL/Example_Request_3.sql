-- I created several queries based on a database stored in my "SQL" repository
-- Task:
-- Select the employee numbers of all individuals who signed more than 1 contract after January 1, 1999.


USE employees;

SELECT 
    emp_no  AS Employees_number
FROM
    dept_emp
    WHERE from_date >= '1999-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;


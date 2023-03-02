-- I created several queries based on a database stored in my "SQL" repository
-- Task:
-- Show 100 highest salaries among employees issued until January 1, 2001.

USE employees;

SELECT 
    *
FROM
    salaries
WHERE
    to_date <= '2001-01-01'
ORDER BY salary DESC
LIMIT 100;


-- I created several queries based on a database stored in my "SQL" repository
-- Show all employees who have birthdays from January 1, 1960, to December 31, 1979
-- The last name begins with the letter "D"
-- Sort the result ascending

USE employees;

SELECT 
    *
FROM
    employees
WHERE
    last_name LIKE ('D%')
        AND birth_date BETWEEN '1960-01-01' AND '1979-12-31'
ORDER BY first_name , last_name ASC;



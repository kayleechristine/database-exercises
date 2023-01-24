USE employees;

SELECT * FROM employees LIMIT 5;

-- Employees with E-e Last Names
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY emp_no;
-- All Christmas Babies
SELECT CONCAT(first_name, ' ', last_name) AS 'Christmas Babies', birth_date AS 'Merry Christmas!' FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;
-- Christmas Babies Hired in the 90s
SELECT CONCAT(first_name, ' ', last_name) AS 'Christmas Babies', birth_date FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999;
-- Forced Retirement List, Merry Christmas!
SELECT CONCAT(first_name, ' ', last_name) AS 'Christmas Babies', birth_date, hire_date, DATEDIFF(NOW(), hire_date) AS 'Days with the Company' FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC, birth_date DESC;
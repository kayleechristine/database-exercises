USE employees;
DESCRIBE titles;
-- Find Distinct Titles
SELECT DISTINCT title FROM titles;
-- Find Unique E...e Names
SELECT last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY last_name  ORDER BY last_name;
-- Find Unique E...e Full Names
SELECT CONCAT(first_name, ' ', last_name) AS Full_Name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY Full_Name ORDER BY Full_Name;
-- Find Unique Q Names (But Not Qu)
SELECT last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name ORDER BY last_name;
-- Counted Q-only Names
SELECT COUNT(last_name) AS '#', last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name ORDER BY last_name;
-- Irena, Vidya, Maya Names Male vs Female
SELECT COUNT(gender) AS '#', gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
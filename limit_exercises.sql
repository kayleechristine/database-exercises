USE employees;

SELECT DISTINCT last_name AS 'Last 10 Surnames' FROM employees ORDER BY last_name DESC LIMIT 10;
SELECT emp_no AS 'Top 5 Highest Bread Winners' FROM salaries ORDER BY salary DESC LIMIT 5;
SELECT emp_no AS 'Top Highest Bread Winners (Pg 10)' FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;

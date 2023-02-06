USE employees;
DESCRIBE employees;
DESCRIBE dept_manager;

# Employees Hired the Same Day as Emp 101010
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name', emp_no FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

# Titles of Employees Named Aamod
SELECT distinct title AS 'Titles', COUNT(title) AS '#' FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
GROUP BY title;

# Current Female Department Managers
SELECT first_name AS 'First Name', last_name AS 'Last Name' FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
)
AND gender = 'F';
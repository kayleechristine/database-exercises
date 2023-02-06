USE employees;
DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE dept_emp;
DESCRIBE employees;
DESCRIBE titles;
DESCRIBE salaries;

# Current Department Managers
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
         JOIN dept_manager
              ON dept_manager.emp_no = employees.emp_no
         JOIN departments
              ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01' ORDER BY departments.dept_name;

# Current Female Department Managers
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
    JOIN dept_manager
        ON dept_manager.emp_no = employees.emp_no
    JOIN departments
        ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F' ORDER BY departments.dept_name;

# Current Customer Service Positions
SELECT title AS 'Title', COUNT(title) AS 'Total' FROM titles
    JOIN dept_emp
        ON dept_emp.emp_no = titles.emp_no
    JOIN employees
        ON titles.emp_no = employees.emp_no
WHERE dept_no = 'd009' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01' GROUP BY title;

# Current Department Manager Salaries
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
FROM salaries
    JOIN employees
        ON employees.emp_no = salaries.emp_no
    JOIN dept_manager
        ON dept_manager.emp_no = employees.emp_no
    JOIN departments
        ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01' ORDER BY departments.dept_name;
--Gets next row value
USE window_db;
SELECT emp_name, salary,
LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employees;
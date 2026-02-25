USE window_db;
SELECT emp_name, salary,
LAG(salary) OVER (ORDER BY salary) AS previous_salary
FROM employees;
--Gets previous row value
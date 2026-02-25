USE window_db;
SELECT emp_name, department, salary,
SUM(salary) OVER (PARTITION BY department) AS dept_total_salary
FROM employees;
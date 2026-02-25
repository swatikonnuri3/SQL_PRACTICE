USE window_db;
SELECT emp_name, salary,
NTILE(2) OVER (ORDER BY salary DESC) AS group_no
FROM employees;
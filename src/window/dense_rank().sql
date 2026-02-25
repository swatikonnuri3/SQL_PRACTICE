USE window_db;
SELECT emp_name, department, salary,
DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank_no
FROM employees;
CREATE DATABASE window_db;
USE window_db;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
INSERT INTO employees VALUES
(1, 'Anu', 'HR', 40000),
(2, 'Ravi', 'HR', 45000),
(3, 'Meena', 'HR', 45000),
(4, 'Kiran', 'IT', 60000),
(5, 'Sita', 'IT', 65000),
(6, 'Arjun', 'IT', 60000);
SELECT emp_name, department, salary,
RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_no
FROM employees;
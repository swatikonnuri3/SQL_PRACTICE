CREATE DATABASE query_db;
USE query_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1, 'Alice', 'IT', 50000),
(2, 'Bob', 'HR', 40000),
(3, 'Charlie', 'IT', 60000),
(4, 'Diana', 'Finance', 45000),
(5, 'Eve', 'IT', 70000);
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
SELECT *
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    WHERE department = 'IT'
);
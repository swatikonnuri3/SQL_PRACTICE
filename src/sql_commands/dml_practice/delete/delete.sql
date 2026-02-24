CREATE DATABASE delete_db;
USE delete_db;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employees VALUES
(101, 'Alice', 2, 50000),
(102, 'Bob', 1, 40000),
(103, 'Charlie', 2, 60000),
(104, 'David', 3, 45000);
DELETE FROM employees
WHERE salary < 45000;
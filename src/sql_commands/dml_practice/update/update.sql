CREATE DATABASE update_practice_db;
USE update_practice_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);
-- Insert records
INSERT INTO employees VALUES
(1, 'Swati', 'HR', 30000),
(2, 'Priya', 'IT', 40000),
(3, 'Rahul', 'HR', 35000);
-- Increase salary of HR employees
UPDATE employees
SET salary = salary + 5000
WHERE dept = 'HR';
----UPDATE using JOIN
-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT');
-- Add dept_id column
ALTER TABLE employees
ADD dept_id INT;
--Update dept_id values
UPDATE employees SET dept_id = 1 WHERE dept = 'HR';
UPDATE employees SET dept_id = 2 WHERE dept = 'IT';
---UPDATE using JOIN
-- Increase salary for IT department using JOIN
UPDATE employees e
JOIN departments d
ON e.dept_id = d.dept_id
SET e.salary = e.salary + 10000
WHERE d.dept_name = 'IT';
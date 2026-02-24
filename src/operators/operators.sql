CREATE DATABASE operators_db;
USE operators_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    age INT
);

INSERT INTO employees VALUES
(1, 'Alice', 'Brown', 50000, 5000, 28),
(2, 'Bob', 'Smith', 40000, 3000, 35),
(3, 'Charlie', 'Davis', 60000, 7000, 42),
(4, 'Diana', 'Miller', 45000, 2000, 30);
---Arithmetic Operators
SELECT emp_id, salary + bonus AS total_income
FROM employees;
--Subtraction (-)
SELECT emp_id, salary - 2000 AS reduced_salary
FROM employees;
--Multiplication (*)
SELECT emp_id, salary * 12 AS annual_salary
FROM employees;
--Division (/)
SELECT emp_id, salary / 12 AS monthly_salary
FROM employees;
---Comparison Operators

--Used in WHERE clause to compare values.

--equal (=)
SELECT * FROM employees
WHERE age = 30;
--Not Equal (!=)
SELECT * FROM employees
WHERE age != 30;
---Greater Than (>) / Less Than (<)
SELECT * FROM employees
WHERE salary > 45000;
SELECT * FROM employees
WHERE age < 35;
--Greater/Less Than or Equal (>=, <=)
SELECT * FROM employees
WHERE age >= 30;
--Logical Operators
SELECT * FROM employees
WHERE salary > 45000 AND age > 30;
SELECT * FROM employees
WHERE salary > 55000 OR age < 30;
SELECT * FROM employees
WHERE NOT age > 35;
--String Concatenation Operator (||)

--Used to combine text values.
SELECT emp_id,
       first_name || ' ' || last_name AS full_name
FROM employees;
--In MySQL, use:
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;
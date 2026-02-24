CREATE DATABASE procedure_db;
USE procedure_db;

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
(4, 'Diana', 'Finance', 45000);
--CREATE PROCEDURE Example 1: Procedure to display all employees
DELIMITER $$

CREATE PROCEDURE get_all_employees()
BEGIN
    SELECT * FROM employees;
END $$

DELIMITER ;
CALL get_all_employees();
DELIMITER $$

CREATE PROCEDURE get_employee_by_dept(IN dept_name VARCHAR(50))
BEGIN
    SELECT * FROM employees
    WHERE department = dept_name;
END $$

DELIMITER ;
CALL get_employee_by_dept('IT');
---ALTER PROCEDURE

--In MySQL, ALTER PROCEDURE is limited.Usually, we DROP and RECREATE the procedure.
DROP PROCEDURE IF EXISTS get_employee_by_dept;

DELIMITER $$

CREATE PROCEDURE get_employee_by_dept(
    IN dept_name VARCHAR(50),
    IN min_salary DECIMAL(10,2)
)
BEGIN
    SELECT * FROM employees
    WHERE department = dept_name
      AND salary >= min_salary;
END $$

DELIMITER ;
CALL get_employee_by_dept('IT', 55000);
--DROP PROCEDURE
DROP PROCEDURE get_all_employees;
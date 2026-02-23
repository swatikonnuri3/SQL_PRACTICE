CREATE DATABASE company;
USE company;
CREATE TABLE employees(
    emp_id INT  PRIMARY KEY,
    emp_name VARCHAR(50),
    salary FLOAT
);
INSERT INTO employees VALUES(11,"swati",30000);
INSERT INTO employees VALUES(12,"sneha",40000);

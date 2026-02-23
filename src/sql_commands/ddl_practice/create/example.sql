-- Create a new database named xyz
CREATE DATABASE xyz;

-- Switch to the xyz database
USE xyz;

-- Create employeee table to store employee basic details
CREATE TABLE employeee (
    emp_id INT PRIMARY KEY,     -- emp_id uniquely identifies each employee
    emp_name VARCHAR(50),       -- stores employee name
    salary INT                 -- stores employee salary
);

-- Insert records into employeee table
INSERT INTO employeee VALUES (1, "swati", 30000);
INSERT INTO employeee VALUES (2, "priya", 40000);

-- Create dept table to store department details
CREATE TABLE dept (
    dept_id INT PRIMARY KEY,    -- unique department ID
    dept_name VARCHAR(50)       -- department name
);

-- Create EMP table with a foreign key relationship
CREATE TABLE EMP (
    emp_id INT PRIMARY KEY,     -- unique employee ID
    emp_name VARCHAR(50),       -- employee name
    dept_id INT,                -- department ID
    FOREIGN KEY (dept_id) REFERENCES dept(dept_id)
    -- foreign key ensures employee belongs to a valid department
);

-- Insert records into dept table
INSERT INTO dept VALUES (1, "hr");
INSERT INTO dept VALUES (2, "finance");

-- Insert records into EMP table
INSERT INTO EMP VALUES (1, "swati", 1);
INSERT INTO EMP VALUES (2, "priya", 2);

-- Create stu table to store student details
CREATE TABLE stu (
    id INT,                     -- student ID
    name VARCHAR(50),            -- student name
    age INT CHECK (age >= 18)    -- age must be 18 or above
);

-- Insert records into stu table
INSERT INTO stu VALUES (1, "swati", 21);
INSERT INTO stu VALUES (2, "priya", 40);

-- Create an index on name column to improve search performance
CREATE INDEX idx_student_name
ON stu(name);
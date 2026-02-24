CREATE DATABASE constraints_db;
USE constraints_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Insert sample data
INSERT INTO students (student_id, name, age) VALUES
(1, 'Alice', 20),
(2, 'Bob', 21);

-- Trying to insert duplicate or NULL student_id will give error
-- INSERT INTO students (student_id, name, age) VALUES (1, 'Charlie', 22); -- Error
-- INSERT INTO students (student_id, name, age) VALUES (NULL, 'David', 23); -- Error
---FOREIGN KEY – Linking Two Tables
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert sample data
INSERT INTO courses (course_id, course_name) VALUES (101, 'Math'), (102, 'Science');
INSERT INTO enrollment (enrollment_id, student_id, course_id) VALUES (1, 1, 101);

-- Trying to add enrollment for non-existing student/course will give error
-- INSERT INTO enrollment (enrollment_id, student_id, course_id) VALUES (2, 3, 101); -- Error
---UNIQUE – Ensuring Unique Values
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE
);

-- Insert sample data
INSERT INTO teachers (teacher_id, email) VALUES (1, 'alice@school.com'), (2, 'bob@school.com');

-- Trying duplicate email will give error
-- INSERT INTO teachers (teacher_id, email) VALUES (3, 'alice@school.com'); -- Error
---CHECK – Condition on Column Values
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    CHECK (salary >= 10000 AND salary <= 100000)
);

INSERT INTO employees (emp_id, name, salary) VALUES (1, 'John', 50000);

-- Invalid insertion
-- INSERT INTO employees (emp_id, name, salary) VALUES (2, 'Jane', 5000); -- Error, fails CHECK
---NOT NULL – Column Cannot Be Empty
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Valid insertion
INSERT INTO departments (dept_id, dept_name) VALUES (1, 'HR');

-- Invalid insertion
-- INSERT INTO departments (dept_id, dept_name) VALUES (2, NULL); -- Error
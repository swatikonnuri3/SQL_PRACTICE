CREATE DATABASE select_db;
USE select_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    trainer VARCHAR(50)
);
INSERT INTO students VALUES
(1, 'Anu', 'SQL', 85),
(2, 'Ravi', 'Python', 72),
(3, 'Meena', 'SQL', 90),
(4, 'Kiran', 'Java', 65),
(5, 'Divya', 'Python', 88);

INSERT INTO courses VALUES
(101, 'SQL', 'Surya'),
(102, 'Python', 'Rahul'),
(103, 'Java', 'Amit');
SELECT * FROM students;
SELECT student_name, marks
FROM students;
--Filtering with WHERE Clause
SELECT *
FROM students
WHERE course = 'SQL';
--Students with marks greater than 80
SELECT *
FROM students
WHERE marks > 80;
---orting with ORDER BY
SELECT *
FROM students
ORDER BY marks;
---Sort students by marks (descending)
SELECT *
FROM students
ORDER BY marks DESC;
--Limiting Results with LIMIT and OFFSET
SELECT *
FROM students
ORDER BY marks DESC
LIMIT 3;
---Skip first 2 records and fetch next 2
SELECT *
FROM students
ORDER BY marks DESC
LIMIT 2 OFFSET 2;


CREATE DATABASE joins_db;
USE joins_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO students (student_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO courses (course_id, course_name) VALUES
(101, 'Math'),
(102, 'Science'),
(103, 'History');

-- Enrollment table
CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollment (enrollment_id, student_id, course_id) VALUES
(1, 1, 101),
(2, 1, 102),
(3, 2, 103);
---INNER JOIN
SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollment e ON s.student_id = e.student_id
INNER JOIN courses c ON e.course_id = c.course_id;
---LEFT JOIN
SELECT s.name, c.course_name
FROM students s
LEFT JOIN enrollment e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;
--RIGHT JOIN
SELECT s.name, c.course_name
FROM students s
RIGHT JOIN enrollment e ON s.student_id = e.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;
--FULL JOIN
SELECT s.name, c.course_name
FROM students s
FULL JOIN enrollment e ON s.student_id = e.student_id
FULL JOIN courses c ON e.course_id = c.course_id;
--CROSS JOIN
SELECT s.name, c.course_name
FROM students s
CROSS JOIN courses c;
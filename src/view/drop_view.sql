CREATE DATABASE view_db;
USE view_db;

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    marks INT
);
INSERT INTO students VALUES
(1, 'Anu', 85),
(2, 'Ravi', 72),
(3, 'Meena', 90),
(4, 'Kiran', 60);
CREATE VIEW high_score_students AS
SELECT student_id, student_name, marks
FROM students
WHERE marks >= 80;
SELECT * FROM high_score_students;
DROP VIEW high_score_students;
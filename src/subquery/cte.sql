CREATE DATABASE cte_db;
USE cte_db;
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    marks INT
);
INSERT INTO students VALUES
(1, 'Anu', 85),
(2, 'Ravi', 72),
(3, 'Meena', 90),
(4, 'Kiran', 60),
(5, 'Swati', 95);
--Find students who scored more than the average marks
WITH AvgMarks AS (
    SELECT AVG(marks) AS avg_marks
    FROM students
)
SELECT student_name, marks
FROM students
WHERE marks > (SELECT avg_marks FROM AvgMarks);
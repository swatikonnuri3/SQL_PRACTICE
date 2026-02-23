CREATE DATABASE truncate_demo_db;
USE truncate_demo_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY,      
    student_name VARCHAR(50),        
    marks INT                         
);
INSERT INTO students VALUES (1, 'Swati', 85);
INSERT INTO students VALUES (2, 'Priya', 90);
TRUNCATE TABLE students;

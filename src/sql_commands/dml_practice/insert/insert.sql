CREATE DATABASE dml_practice_db;
USE dml_practice_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);
---Insert Single Row
INSERT INTO students (name, age, city)
VALUES ('Swati', 21, 'Bangalore');
---Insert Multiple Rows
INSERT INTO students (name, age, city)
VALUES 
('Rahul', 22, 'Mumbai'),
('Ananya', 20, 'Delhi'),
('Kiran', 23, 'Hyderabad');
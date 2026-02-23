CREATE DATABASE classrooms;
USE classrooms;
CREATE TABLE students(
    id INT PRIMARY KEY ,
    name VARCHAR(50),
    age INT NOT NULL
);
INSERT INTO students VALUES(1,"swati",21);  
INSERT INTO students VALUES(2,"sneha",25);
DROP TABLE students;  
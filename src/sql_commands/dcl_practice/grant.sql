-- Create a database
CREATE DATABASE grant_db;


USE grant_db;


CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);
-- Create a user 'john' with password 'john123'
CREATE USER 'john'@'localhost' IDENTIFIED BY 'john123';
---Grant Privileges

---Grant SELECT privilege on employees table:
GRANT SELECT ON grant_db.employees TO 'john'@'localhost';
--Grant multiple privileges (SELECT, INSERT, UPDATE, DELETE) on employees table:
GRANT SELECT, INSERT, UPDATE, DELETE ON grant_db.employees TO 'john'@'localhost';
--Grant all privileges on the database:
GRANT ALL PRIVILEGES ON grant_db.* TO 'john'@'localhost';

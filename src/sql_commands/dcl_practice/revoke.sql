
CREATE DATABASE revoke_db;
USE revoke_db;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);
-- Create a new user 'mike'
CREATE USER 'mike'@'localhost' IDENTIFIED BY 'mike123';

-- Grant multiple privileges to 'mike' on revoke_db.employees
GRANT SELECT, INSERT, UPDATE, DELETE ON revoke_db.employees TO 'mike'@'localhost';
--Revoke DELETE privilege
REVOKE DELETE ON revoke_db.employees FROM 'mike'@'localhost';
--Revoke INSERT and UPDATE privileges
REVOKE INSERT, UPDATE ON revoke_db.employees FROM 'mike'@'localhost';
--Revoke all privileges
REVOKE ALL PRIVILEGES ON revoke_db.* FROM 'mike'@'localhost';
CREATE DATABASE company_db;
USE company_db;
CREATE TABLE staff(
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(50),
    salary INT
);
INSERT INTO staff VALUES(1,"swati",30000);
INSERT INTO staff VALUES(2,"sneha",40000);
-- Step 2: ALTER - ADD COLUMN
-- Add email column to store staff email IDs
ALTER TABLE staff
ADD email VARCHAR(100);
-- Modify salary column to allow higher salary values
ALTER TABLE staff
MODIFY salary BIGINT;
-- Rename staff_name column to full_name
ALTER TABLE staff
RENAME COLUMN staff_name TO full_name;
-- Drop email column as it is no longer required
ALTER TABLE staff
DROP COLUMN email;
----ALTER - ADD UNIQUE CONSTRAINT
-- Ensure full_name values are unique
ALTER TABLE staff
ADD CONSTRAINT uq_full_name UNIQUE (full_name);

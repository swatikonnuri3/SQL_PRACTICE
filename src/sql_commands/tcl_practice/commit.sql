
CREATE DATABASE tcl_db;
USE tcl_db;

CREATE TABLE accounts (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO accounts (id, name, balance) VALUES
(1, 'Alice', 1000.00),
(2, 'Bob', 1500.00),
(3, 'Charlie', 2000.00);
-- Start transaction (implicitly in most DBs)
UPDATE accounts SET balance = balance + 500 WHERE name = 'Alice';

-- Check balance before commit
SELECT * FROM accounts;

-- Commit changes
COMMIT;

-- Changes are now permanent
SELECT * FROM accounts;
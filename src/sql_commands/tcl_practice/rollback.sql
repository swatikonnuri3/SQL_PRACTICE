
CREATE DATABASE rollback_db;

USE rollback_db;
CREATE TABLE accounts (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10,2)
);

-- Insert initial data
INSERT INTO accounts (id, name, balance) VALUES
(1, 'Alice', 1000.00),
(2, 'Bob', 1500.00);
-- Start a transaction (implicitly in most DBs)
UPDATE accounts SET balance = balance - 200 WHERE name = 'Alice';

-- Check balance before rollback
SELECT * FROM accounts;

-- Undo changes
ROLLBACK;

-- Check balances after rollback
SELECT * FROM accounts;
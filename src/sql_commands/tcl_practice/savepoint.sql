
CREATE DATABASE savepoint_db;

USE savepoint_db;
CREATE TABLE accounts (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO accounts (id, name, balance) VALUES
(1, 'Charlie', 2000.00),
(2, 'Dave', 1200.00);
-- Start a transaction
UPDATE accounts SET balance = balance + 300 WHERE name = 'Charlie';

-- Set a savepoint
SAVEPOINT before_dave_update;

-- Make another update
UPDATE accounts SET balance = balance + 100 WHERE name = 'Dave';

-- Rollback to savepoint
ROLLBACK TO before_dave_update;

-- Only Charlie's update remains; Dave's update is undone
SELECT * FROM accounts;

-- Commit the remaining changes
COMMIT;

-- Final balances are saved permanently
SELECT * FROM accounts;
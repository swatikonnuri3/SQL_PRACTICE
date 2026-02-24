CREATE DATABASE dql_db;
USE dql_db;
CREATE TABLE sales (
    id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO sales (id, product, category, quantity, price) VALUES
(1, 'Laptop', 'Electronics', 5, 800.00),
(2, 'Mouse', 'Electronics', 15, 20.00),
(3, 'Keyboard', 'Electronics', 10, 30.00),
(4, 'Chair', 'Furniture', 7, 150.00),
(5, 'Table', 'Furniture', 3, 300.00);
-- Retrieve all columns
SELECT * FROM sales;

-- Retrieve specific columns
SELECT product, price FROM sales;
-- Count total number of products
SELECT COUNT(*) AS total_products FROM sales;

-- Sum of all quantities sold
SELECT SUM(quantity) AS total_quantity FROM sales;

-- Average price of products
SELECT AVG(price) AS avg_price FROM sales;

-- Minimum and maximum price
SELECT MIN(price) AS min_price, MAX(price) AS max_price FROM sales;
-- Total quantity sold by category
SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category;
---HAVING – Filtering Aggregated Data
-- Show categories where total quantity > 10
SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
HAVING SUM(quantity) > 10;
--ORDER BY – Sorting Results
-- Sort sales by price descending
SELECT product, price FROM sales
ORDER BY price DESC;

-- Sort by category ascending and then by quantity descending
SELECT * FROM sales
ORDER BY category ASC, quantity DESC;
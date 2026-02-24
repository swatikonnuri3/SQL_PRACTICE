CREATE DATABASE aggregate_db;
USE aggregate_db;

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO sales VALUES
(1, 'Laptop', 'Electronics', 5, 800),
(2, 'Mouse', 'Electronics', 20, 20),
(3, 'Keyboard', 'Electronics', 15, 30),
(4, 'Chair', 'Furniture', 10, 150),
(5, 'Table', 'Furniture', 5, 300);
--COUNT() – Number of Rows
SELECT COUNT(*) AS total_sales FROM sales;
--SUM() – Total Value
SELECT SUM(quantity) AS total_quantity FROM sales;
--AVG() – Average Value
SELECT AVG(price) AS avg_price FROM sales;
---MIN() and MAX() – Lowest & Highest
SELECT 
MIN(price) AS min_price,
MAX(price) AS max_price
FROM sales;
---WHERE – Filter Rows
SELECT * FROM sales
WHERE category = 'Electronics';
--GROUP BY – Group Data
SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category;
---HAVING – Filter Groups
SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
HAVING SUM(quantity) > 20;
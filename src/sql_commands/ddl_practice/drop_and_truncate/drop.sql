CREATE DATABASE drop_demo_db;
USE drop_demo_db;
CREATE TABLE products (
    product_id INT PRIMARY KEY,     
    product_name VARCHAR(50),        
    price INT                        
);
INSERT INTO products VALUES (1, 'Pen', 10);
INSERT INTO products VALUES (2, 'Notebook', 50);
DROP TABLE products;

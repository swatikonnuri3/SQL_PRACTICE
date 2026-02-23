CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;
CREATE TABLE IF NOT EXISTS books(
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    authour VARCHAR(50) ,
    price INT CHECK(price>0),
    available_copies INT DEFAULT 1
);

INSERT INTO books VALUES(1,"the aclh of the king","robert",500,5);

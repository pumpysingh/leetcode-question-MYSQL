CREATE DATABASE easy_leetcode;
USE easy_leetcode;
CREATE TABLE products(product_id INT PRIMARY KEY,low_fats ENUM('Y','N'),recyclable ENUM('Y','N'));
INSERT INTO products VALUES(0,'Y','N'),(1,'Y','Y'),(2,'N','Y'),(3,'Y','Y'),(4,'N','N');
SELECT * FROM products;
SELECT product_id FROM products WHERE product_id IN (1,3);
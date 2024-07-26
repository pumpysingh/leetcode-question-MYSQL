CREATE TABLE Product(product_id INT PRIMARY KEY,product_name VARCHAR(50));
CREATE TABLE Sales(sale_id INT PRIMARY KEY,product_id INT,year INT,quantity INT,price INT,FOREIGN KEY(product_id) REFERENCES Product(product_id));
INSERT INTO Product VALUES(100,"Nokia"),(200,"Apple"),(300,"Samsung");
INSERT INTO Sales VALUES(1,100,2008,10,5000),(2,100,2009,12,5000),(7,200,2011,15,9000);
SELECT * FROM Sales;
SELECT * FROM Product;
SELECT product_name,year,price FROM Sales JOIN Product ON Sales.product_id=Product.product_id;
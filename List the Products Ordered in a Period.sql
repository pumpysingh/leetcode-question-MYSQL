CREATE TABLE Products1(product_id INT PRIMARY KEY,product_name VARCHAR(40),product_category VARCHAR(40));
INSERT INTO Products1 VALUES(1,"Leetcode Solutions","Book"),(2,"Jewels of Stringology","Book"),(3,"HP","Laptop"),
(4,"Lenovo","Laptop"),(5,"Leetcode Kit","T-shirt");
SELECT * FROM Products1;
CREATE TABLE Orders(product_id INT,order_date DATE,unit INT,FOREIGN KEY (product_id) REFERENCES Products1(product_id));
INSERT INTO Orders VALUES(1,"2020-02-05",60),(1,"2020-02-10",70),(2,"2020-01-18",30),(2,"2020-02-11",80),(3,"2020-02-17",2),
(3,"2020-02-24",3),(4,"2020-03-01",20),(4,"2020-03-04",30),(4,"2020-03-04",60),(5,"2020-02-25",50),(5,"2020-02-27",50),(5,"2020-03-01",50);
SELECT * FROM Orders;
SELECT product_name,SUM(unit) AS unit FROM Products1 JOIN Orders ON Products1.product_id=Orders.product_id WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29' GROUP BY product_name HAVING unit>=100   ;

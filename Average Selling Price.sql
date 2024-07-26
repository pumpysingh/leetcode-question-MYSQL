CREATE TABLE Prices(product_id INT ,start_date date UNIQUE NOT NULL,end_date date UNIQUE NOT NULL,price INT);
CREATE TABLE UnitsSold(product_id INT,purchase_date date,units INT);
INSERT INTO Prices VALUES(1,"2019-02-17","2019-02-28",5),(1,"2019-03-01","2019-03-22",20),(2,"2019-02-01","2019-02-20",15),
(2,"2019-02-21","2019-03-31",30);
INSERT INTO UnitsSold VALUES(1,"2019-02-25",100),(1,"2019-03-01",15),(2,"2019-02-10",200),(2,"2019-03-22",30);
DROP TABLE Prices;
DROP TABLE UnitsSold;
SELECT * FROM Prices;
SELECT * FROM UnitsSold;
SELECT Prices.product_id,ROUND(SUM(Prices.price*UnitsSold.units)/SUM(UnitsSold.units),2) as average_price FROM Prices LEFT JOIN UnitsSold ON UnitsSold.product_id=Prices.product_id AND UnitsSold.purchase_date BETWEEN Prices.start_date AND Prices.end_date GROUP BY product_id;

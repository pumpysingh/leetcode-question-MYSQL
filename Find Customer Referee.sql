CREATE TABLE customer(id INT PRIMARY KEY,name VARCHAR(50) NOT NULL,referee_id INT);
INSERT INTO customer VALUES(1,"Will",null),(2,"Jane",null),(3,"Alex",2),(4,"Bill",null),(5,"Zack",1),(6,"Mark",2);
DROP TABLE customer;
SELECT * FROM customer;
SELECT name FROM customer WHERE referee_id!=2 OR referee_id IS null;
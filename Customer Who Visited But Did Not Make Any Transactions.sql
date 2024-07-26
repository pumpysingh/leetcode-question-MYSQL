CREATE TABLE Visits(visit_id INT PRIMARY KEY,customer_id INT NOT NULL);
CREATE TABLE Transactions(transaction_id INT PRIMARY KEY,visit_id INT,amount INT,FOREIGN KEY (visit_id) REFERENCES Visits(visit_id));
INSERT INTO Visits VALUES(1,23),(2,9),(4,30),(5,54),(6,96),(7,54),(8,54);
INSERT INTO Transactions VALUES(2,5,310),(3,5,300),(9,5,200),(12,1,910),(13,2,970);
SELECT * FROM Visits;
SELECT * FROM Transactions;
select customer_id, count(customer_id) from Visits where visit_id not in (select visit_id from Transactions) group by customer_id;
SELECT customer_id, COUNT(customer_id) AS count_no_trans FROM Visits LEFT JOIN Transactions USING (visit_id) WHERE amount IS NULL GROUP BY customer_id;



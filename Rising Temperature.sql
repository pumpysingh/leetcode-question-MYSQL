CREATE TABLE Weather(id INT PRIMARY KEY,recordDate date,temperature INT NOT NULL);
INSERT INTO Weather VALUES(1,'2015-01-01',10),(2,'2015-01-02',25),(3,'2015-01-03',20),(4,'2015-01-04',30);
SELECT * FROM Weather;
SELECT a.id FROM Weather a,Weather b WHERE a.temperature>b.temperature AND DATEDIFF(a.recordDate,b.recordDate)=1 ;

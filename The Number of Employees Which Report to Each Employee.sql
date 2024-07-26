CREATE TABLE Employees1(employee_id INT NOT NULL,name VARCHAR(40) NOT NULL,reports_to INT,age INT NOT NULL);
INSERT INTO Employees1 VALUES(9,"Hercy",null,43),(6,"Alice",9,41),(4,"Bob",9,36),(2,"Winston",null,37);
SELECT employee_id,name,COUNT(reports_to) AS reports_count,ROUND(AVG(age),0) AS average_age FROM Employees1;
CREATE TABLE Employees3(employee_id INT PRIMARY KEY,name VARCHAR(50) NOT NULL,anager_id INT,salary INT NOT NULL);
INSERT INTO Employees3 VALUES(3,"Mila",9,60301),(12,"Antonella",null,31000),(13,"Emery",null,67034),
(1,"Kalel",11,21241),(9,"Mikaela",null,50937),(11,"Joziah",6,28435);
ALTER TABLE Employees3 CHANGE COLUMN anager_id manager_id INT;
SELECT employee_id  FROM Employees3 WHERE salary <30000 AND manager_id NOT IN(SELECT employee_id  FROM Employees3);


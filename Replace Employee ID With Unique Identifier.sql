CREATE TABLE Employees(id INT PRIMARY KEY,name VARCHAR(50));
CREATE TABLE EmployeeUNI(id INT PRIMARY KEY,unique_id INT);
INSERT INTO Employees VALUES(1,"Alice"),(7,"Bob"),(11,"Meir"),(90,"Winston"),(3,"Jonathan");
INSERT INTO EmployeeUNI VALUES(3,1),(11,2),(90,3);
SELECT * FROM Employees;
SELECT * FROM EmployeeUNI;
SELECT unique_id,name FROM Employees LEFT JOIN EmployeeUNI ON Employees.id=EmployeeUNI.id;
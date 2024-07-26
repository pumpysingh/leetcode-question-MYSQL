CREATE TABLE Patients(patient_id INT PRIMARY KEY,patient_name VARCHAR(40) NOT NULL,conditions VARCHAR(40) NOT NULL);
INSERT INTO Patients VALUES(1,"Daniel","YFEV COUGH"),(2,"Alice"," "),(3,"Bob","DIAB100 MYOP"),
(4,"George","ACNE DIAB100"),(5,"Alain","DIAB201");
SELECT * FROM Patients WHERE conditions LIKE "%DIAB1%";
CREATE TABLE Courses(student VARCHAR(50) PRIMARY KEY,class VARCHAR(40));
INSERT INTO Courses VALUES("A","Math"),("B","English"),("C","Math"),("D","Biology"),("E","Math"),
("F","Computer"),("G","Math"),("H","Math"),("I","Math");
SELECT class FROM Courses  GROUP BY class HAVING COUNT(*)>5;
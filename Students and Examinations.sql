CREATE TABLE Students(student_id INT PRIMARY KEY,student_name VARCHAR(50));
CREATE TABLE Subjects(subject_name VARCHAR(50) PRIMARY KEY);
CREATE TABLE Examinations(student_id INT,subject_name VARCHAR(30));
INSERT INTO Students VALUES(1,"Alice"),(2,"Bob"),(13,"John"),(6,"Alex");
INSERT INTO Subjects VALUES("Math"),("Physics"),("Programming");
INSERT INTO Examinations VALUES(1,"Math"),(1,"Physics"),(1,"Programming"),(2,"Programming"),(1,"Physics"),(1,"Math"),
(13,"Math"),(13,"Programming"),(13,"Physics"),(2,"Math"),(1,"Math");
SELECT DISTINCT Students.student_id,Students.student_name,Subjects.subject_name, COUNT(Examinations.student_id) AS attended_exams FROM Students CROSS JOIN Subjects LEFT JOIN Examinations ON Students.student_id=Examinations.student_id AND Subjects.subject_name=Examinations.subject_name GROUP BY 1,2,3;

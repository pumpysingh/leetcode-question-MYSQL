CREATE TABLE Person(id INT PRIMARY KEY,email VARCHAR(40));
INSERT INTO Person VALUES(1,"john@example.com"),(2,"bob@example.com"),(3,"john@example.com");
SELECT id, email FROM Person GROUP BY email;
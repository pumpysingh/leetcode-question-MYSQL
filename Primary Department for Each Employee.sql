USE easy_leetcode;
CREATE TABLE Employee2(employee_id INT NOT NULL,department_id INT NOT NULL,primary_flag ENUM("Y","N"));
INSERT INTO Employee2 VALUES(1,1,"N"),(2,1,"Y"),(2,2,"N"),(3,3,"N"),
(4,2,"N"),(4,3,"Y"),(4,4,"N");
SELECT employee_id FROM Employee2 GROUP BY employee_id;


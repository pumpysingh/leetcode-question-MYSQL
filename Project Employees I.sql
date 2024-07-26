CREATE TABLE Project(project_id INT NOT NULL,employee_id INT PRIMARY KEY);
CREATE TABLE EmployeesProject(employee_id INT PRIMARY KEY,name VARCHAR(50),experience_years INT NOT NULL,FOREIGN KEY (employee_id) REFERENCES Project(employee_id) ON DELETE CASCADE);
INSERT INTO Project VALUES(1,1),(1,2),(1,3),(2,4);
INSERT INTO Project VALUES(2,1);
INSERT INTO EmployeesProject VALUES(1,"Khaled",3),(2,"Ali",2),(3,"John",1),(4,"Doe",2);
SELECT Project.project_id,ROUND(AVG(experience_years),2) AS average_years  FROM Project LEFT JOIN EmployeesProject ON Project.employee_id=EmployeesProject.employee_id  GROUP BY Project.project_id;


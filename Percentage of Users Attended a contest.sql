USE easy_leetcode;
CREATE TABLE users(user_id INT PRIMARY KEY,user_name VARCHAR(50));
INSERT INTO users VALUES(6,"Alice"),(2,"Bob"),(7,"Alex");
SELECT * FROM users;
CREATE TABLE Register(contest_id INT NOT NULL,user_id INT NOT NULL);
INSERT INTO Register VALUES(215,6),(209,2),(208,2),(210,6),(208,6),(209,7),
(209,6),(215,7),(208,7),(210,2),(207,2),(210,7);
SELECT contest_id, ROUND(COUNT(user_id) * 100 / (SELECT COUNT(*) FROM Users), 2) AS percentage  FROM Register GROUP BY contest_id  ORDER BY percentage DESC;
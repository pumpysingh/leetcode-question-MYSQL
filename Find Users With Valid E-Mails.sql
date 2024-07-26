CREATE TABLE Users2(user_id INT PRIMARY KEY,name VARCHAR(40) NOT NULL,mail VARCHAR(40) NOT NULL);
INSERT INTO Users2 VALUES(1,"Winston","winston@leetcode.com"),(2,"Jonathan","jonathanisgreat"),(3,"Annabelle","bella-@leetcode.com"),
(4,"Sally","sally.come@leetcode.com"),(5,"Marwan","quarz#2020@leetcode.com"),(6,"David","david69@gmail.com"),(7,"Shapiro","shapo@leetcode.com");
SELECT * FROM Users2 WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode.com$';
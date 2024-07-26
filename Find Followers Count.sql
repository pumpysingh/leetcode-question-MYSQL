CREATE TABLE Followers(user_id INT,follower_id INT);
INSERT INTO Followers(user_id,follower_id) VALUES(0,1),(1,0),(2,0),(2,1);
DROP TABLE Followers;
SELECT user_id,COUNT(follower_id) AS followers_count FROM Followers  GROUP BY user_id;
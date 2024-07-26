CREATE TABLE tweets(tweet_id INT PRIMARY KEY,content VARCHAR(250));
INSERT INTO tweets VALUES(1,"Vote for Biden"),(2,"Let us make America great again!");
SELECT * FROM tweets;
SELECT tweet_id FROM tweets WHERE CHAR_LENGTH(content)>15;
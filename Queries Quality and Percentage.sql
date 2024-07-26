CREATE TABLE Queries(query_name VARCHAR(40) NOT NULL,result VARCHAR(40) NOT NULL,position INT NOT NULL, rating INT NOT NULL);
INSERT INTO Queries VALUES("Dog","Golden Retriever",1,5),("Dog","German Shepherd",2,5),("Dog","Mule",200,1),
("Cat","Shirazi",5,2),("Cat","Siamese",3,3),("Cat","Sphynx",7,4);
SELECT query_name,ROUND(SUM(rating/position)/COUNT(query_name),2) AS quality ,ROUND(SUM(rating<3)/COUNT(rating)*100,2) AS poor_query_percentage FROM Queries GROUP BY query_name;
CREATE TABLE Activity(machine_id INT,process_id INT NOT NULL,activity_type ENUM('start','end') NOT NULL,timestamp FLOAT NOT NULL);
INSERT INTO Activity VALUES(0,0,'start',0.712),(0,0,'end',1.520),
(0,1,'start',3.140),(0,1,'end',4.120),(1,0,'start',0.550),(1,0,'end',1.550),
(1,1,'start',0.430),(1,1,'end',1.420),(2,0,'start',4.100),(2,0,'end',4.512),
(2,1,'start',2.500),(2,1,'end',5.000 );
SELECT machine_id,ROUND(AVG(timestamp),3) AS processing_time  FROM Activity GROUP BY machine_id;


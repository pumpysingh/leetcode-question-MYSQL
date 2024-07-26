CREATE TABLE Activity1(user_id INT,session_id INT,activity_date DATE,activity_type ENUM('open_session', 'end_session', 'scroll_down', 'send_message'));
INSERT INTO Activity1 VALUES(1,1,"2019-07-20","open_session"),(1,1,"2019-07-20","scroll_down"),(1,1,"2019-07-20","end_session"),
(2,4,"2019-07-20","open_session"),(2,4,"2019-07-21","send_message"),(2,4,"2019-07-21","end_session"),(3,2,"2019-07-21","open_session"),
(3,2,"2019-07-21","send_session"),(3,2,"2019-07-21","end_session"),(4,3,"2019-06-25","open_session"),(4,3,"2019-06-25","end_session");
SELECT activity_date AS day,COUNT(DISTINCT user_id) As active_users FROM Activity1 WHERE DATEDIFF("2019-07-27", activity_date)<30 GROUP BY activity_date;
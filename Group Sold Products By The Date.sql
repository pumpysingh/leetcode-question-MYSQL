CREATE TABLE Activities(sell_date DATE,product VARCHAR(40));
INSERT INTO Activities VALUES("2020-05-30","Headphone"),("2020-06-01","Pencil"),("2020-06-02","Mask"),("2020-05-30","Basketball"),
("2020-06-01","Bible"),("2020-06-02","Mask"),("2020-05-30","T-Shirt");
SELECT sell_date,COUNT(product) AS num_sold,GROUP_CONCAT(product) AS products FROM Activities GROUP BY sell_date;
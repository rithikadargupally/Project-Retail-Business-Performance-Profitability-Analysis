CREATE DATABASE retail_analysis;
USE retail_analysis;
CREATE TABLE superstore (
Order_ID VARCHAR(50),
Order_Date VARCHAR(50),
Ship_Date VARCHAR(50),
Category VARCHAR(50),
Product_Name VARCHAR(255),
Sales DECIMAL(10,2),
Quantity INT,
Profit DECIMAL(10,2),
Region VARCHAR(50)
);
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'C:\Users\Divya\OneDrive\Desktop\Retail_SQL_Final.csv'
INTO TABLE superstore
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
DROP TABLE superstore;
CREATE TABLE superstore (
    Order_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(100),
    Sales DECIMAL(10,2),
    Quantity INT,
    Profit DECIMAL(10,2),
    Region VARCHAR(50)
);
INSERT INTO superstore VALUES
('CA-001','Furniture','Chairs','Office Chair',500,5,80,'West'),
('CA-002','Technology','Phones','Smart Phone',1200,3,200,'East'),
('CA-003','Furniture','Tables','Conference Table',800,2,-150,'West'),
('CA-004','Office Supplies','Paper','Printer Paper',200,10,50,'South'),
('CA-005','Technology','Accessories','Keyboard',300,8,90,'North'),
('CA-006','Furniture','Tables','Computer Table',700,4,-100,'East'),
('CA-007','Technology','Phones','Cordless Phone',600,2,-50,'West'),
('CA-008','Office Supplies','Storage','File Cabinet',400,3,70,'South');
SELECT * FROM superstore;
SELECT Category,
SUM(Sales),
SUM(Profit)
FROM superstore
GROUP BY Category;



DROP DATABASE IF EXISTS StoreDB;
CREATE DATABASE StoreDB;
USE StoreDB;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 850.00, 10),
(2, 'Smartphone', 'Electronics', 600.00, 15),
(3, 'Keyboard', 'Electronics', 35.00, 25),
(4, 'Mouse', 'Electronics', 20.00, 40),
(5, 'Headphones', 'Electronics', 75.00, 18),
(6, 'Office Chair', 'Furniture', 150.00, 8),
(7, 'Desk', 'Furniture', 200.00, 5),
(8, 'Notebook', 'Stationery', 5.00, 100),
(9, 'Pen', 'Stationery', 2.00, 200),
(10, 'Printer', 'Electronics', 300.00, 0);

SELECT Category, AVG(Price) AS Average_Price
FROM Products
GROUP BY Category;

DROP DATABASE IF EXISTS StoreDB;
CREATE DATABASE StoreDB;
USE StoreDB;

-- 1. Create Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT
);

-- 2. Insert Data
INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 850.00, 10),
(2, 'Smartphone', 'Electronics', 600.00, 15),
(3, 'Keyboard', 'Electronics', 35.00, 25),
(4, 'Mouse', 'Electronics', 20.00, 40),
(5, 'Headphones', 'Electronics', 75.00, 18),
(6, 'Office Chair', 'Furniture', 150.00, 8),
(7, 'Desk', 'Furniture', 200.00, 5),
(8, 'Notebook', 'Stationery', 5.00, 100),
(9, 'Pen', 'Stationery', 2.00, 200),
(10, 'Printer', 'Electronics', 300.00, 0);

-- 3. Updates (د Delete کولو نه وړاندې)
UPDATE Products SET Price = 650.00 WHERE ProductID = 2;
UPDATE Products SET StockQuantity = 20 WHERE ProductID = 10;

-- 4. Delete Out-of-Stock Products
DELETE FROM Products WHERE StockQuantity = 0;

-- 5. Alter Table & Add Supplier
ALTER TABLE Products ADD Supplier VARCHAR(100);
UPDATE Products SET Supplier = 'ABC Suppliers' WHERE ProductID = 1;
UPDATE Products SET Supplier = 'XYZ Suppliers' WHERE ProductID = 2;

-- 6. Queries & Aggregates
SELECT COUNT(*) AS Total_Products FROM Products;
SELECT AVG(Price) AS Average_Price FROM Products;
SELECT MAX(Price) AS Highest_Price FROM Products;
SELECT MIN(Price) AS Lowest_Price FROM Products;
SELECT SUM(StockQuantity) AS Total_Stock FROM Products;

SELECT Category, COUNT(*) AS Product_Count
FROM Products
GROUP BY Category;

SELECT Category, AVG(Price) AS Average_Price
FROM Products
GROUP BY Category;

-- ۱. د ټولو محصولاتو او نوي کالم (Supplier) پورپوړی لیست
SELECT * FROM Products;

-- ۲. د کټګورۍ له مخې د اجناسو شمېر او اوسط قیمت
SELECT 
    Category, 
    COUNT(*) AS Total_Products, 
    AVG(Price) AS Average_Price
FROM Products
GROUP BY Category;

-- ۳. د ټول سټاک او مجموعي قیمت درک کول
SELECT 
    COUNT(*) AS Total_Items,
    SUM(StockQuantity) AS Total_Stock_Units,
    MAX(Price) AS Most_Expensive,
    MIN(Price) AS Cheapest
FROM Products;

SELECT * FROM Products;
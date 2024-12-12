CREATE TABLE Customer
(CustomerID INT PRIMARY KEY,
FirstName varchar(50),
LastName varchar (50),
City varchar (50),
Age INT
);

INSERT INTO Customer (CustomerID, FirstName, LastName, City, Age) VALUES
(2, 'Nurul', 'Hassan', 'Penang', 34),
(3, 'Auni', 'Abdullah', 'Sabah', 41),
(4, 'Amalina', 'Seliman', 'Pahang', 37),
(5, 'Siti', 'Daud', 'Sarawak', 28),
(6, 'Dennis', 'Abdullah', 'Melaka', 24),
(7, 'Aaron', 'Tan', 'Sarawak', 20),
(8, 'Tracy', 'Chua', 'Sarawak', 29),
(9, 'Alif', 'Adnan', 'Sarawak', 32),
(10, 'Nabilah', 'Azri', 'Kedah', 45)


SELECT *
FROM Customer

--How to update data
UPDATE Customer --used to update table
SET City = 'Selangor'
WHERE FirstName = 'Aaron'



--How to Delete data
--DELETE Customer --used to delete data, 
--DELETE TABLE Customer to delete the whole table 

-- DROP TABLE Customer
-- Used to delete table

--how to add column
ALTER TABLE Customer
add District varchar (50)

--added the newly added column
UPDATE Customer
SET District = 'Bintulu'
where FirstName = 'siti'

SELECT * FROM Customer

--Create Product Table
CREATE TABLE Products
(
ProductID INT PRIMARY KEY,
ProductName varchar (50),
Price float
);

SELECT * FROM Products

--insert data into Product Tables
INSERT INTO Products (ProductID, ProductName, Price) values
(1, 'Roti John', 5.5),
(2, 'Murtabak', 7.0),
(3, 'ABC', 4.0)
-- because this data is not affected by primary key so the data will continuously add the data

DROP TABLE  products

CREATE TABLE Orders
(
OrderID INT PRIMARY KEY,
OrderDate Datetime,
CustomerID INT,
ProductID INT,
FOREIGN KEY (CustomerID) references Customer (CustomerID),
FOREIGN KEY (ProductID) references Products(ProductID)
);

drop table orders

INSERT INTO Orders(OrderID, OrderDate,CustomerID, ProductID) values
(2, GETDATE(), 1,4)

SELECT * FROM Orders
SELECT * FROM Products
SELECT * FROM Customer




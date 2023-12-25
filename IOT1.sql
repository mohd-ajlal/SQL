CREATE DATABASE sto;
USE sto;

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE OrderNum (
    OrderItemID INT UNIQUE,
    CustomerID INT,
    ProductID INT,
    Name VARCHAR(50), -- Added the Name column
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

INSERT INTO Category (CategoryID, CategoryName)
VALUES
    (1, 'Electronics'),
    (2, 'Clothing'),
    (3, 'Books');

INSERT INTO Product (ProductID, ProductName, CategoryID)
VALUES
    (101, 'Laptop', 1),
    (102, 'T-shirt', 2),
    (103, 'Book', 3);

INSERT INTO Customer (CustomerID, Name)
VALUES
    (201, 'Mohd Ajlal'),
    (202, 'Shash');

INSERT INTO OrderNum (OrderItemID, CustomerID, ProductID, Name)
VALUES
    (1, 201, 101, 'Mohd Ajlal'),
    (2, 202, 102, 'Shash'),
    (3, 201, 103, 'Mohd Ajlal');

SELECT * FROM OrderNum WHERE Name LIKE '%sh';
SHOW TABLES;

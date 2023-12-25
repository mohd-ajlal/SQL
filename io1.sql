create database aaa;
use aaa;

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Category Table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

-- Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- Order Table
CREATE TABLE OrderTable (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- OrderItem Table
CREATE TABLE OrderItem (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES OrderTable(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Inserting sample data
INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home and Garden');

INSERT INTO Product (ProductID, ProductName, Price, CategoryID) VALUES
(1, 'Laptop', 999.99, 1),
(2, 'T-shirt', 19.99, 2),
(3, 'Garden Tools Set', 49.99, 3);

INSERT INTO Customer (CustomerID, FirstName, LastName, Email) VALUES
(1, 'John', 'Smish', 'john.smith@example.com'),
(2, 'Alice', 'Johnson', 'alice.johnson@example.com'),
(3, 'Robert', 'Thomas', 'robert.thomas@example.com');

INSERT INTO OrderTable (OrderID, CustomerID, OrderDate) VALUES
(101, 1, '2023-01-01'),
(102, 2, '2023-01-02'),
(103, 3, '2023-01-03');

INSERT INTO OrderItem (OrderItemID, OrderID, ProductID, Quantity, Price) VALUES
(201, 101, 1, 2, 1999.98),
(202, 102, 2, 3, 59.97),
(203, 103, 3, 1, 49.99);

-- Retrieve customers whose names end with 'sh'
SELECT * FROM Customer WHERE LastName LIKE '%sh';


show tables;

CREATE DATABASE aj;
USE aj;

-- Product Table
CREATE TABLE Product (
    amazon_previous_product_id INT PRIMARY KEY,
    amazon_previous_product_name VARCHAR(255) NOT NULL,
    amazon_previous_product_price DECIMAL(10, 2) NOT NULL,
    amazon_previous_category_id INT,
    FOREIGN KEY (amazon_previous_category_id) REFERENCES amazon_previous_category(amazon_previous_category_id)
);

-- Category Table
CREATE TABLE amazon_previous_category (
    amazon_previous_category_id INT PRIMARY KEY,
    amazon_previous_category_name VARCHAR(100) NOT NULL
);

-- Customer Table
CREATE TABLE amazon_previous_customer (
    amazon_previous_customer_id INT PRIMARY KEY,
    amazon_previous_first_name VARCHAR(50) NOT NULL,
    amazon_previous_last_name VARCHAR(50) NOT NULL,
    amazon_previous_email VARCHAR(100) NOT NULL
);

-- Order Table
CREATE TABLE amazon_previous_order (
    amazon_previous_order_id INT PRIMARY KEY,
    amazon_previous_customer_id INT,
    amazon_previous_order_date DATE NOT NULL,
    FOREIGN KEY (amazon_previous_customer_id) REFERENCES amazon_previous_customer(amazon_previous_customer_id)
);

-- OrderItem Table
CREATE TABLE amazon_previous_order_item (
    amazon_previous_order_item_id INT PRIMARY KEY,
    amazon_previous_order_id INT,
    amazon_previous_product_id INT,
    amazon_previous_quantity INT NOT NULL,
    amazon_previous_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (amazon_previous_order_id) REFERENCES amazon_previous_order(amazon_previous_order_id),
    FOREIGN KEY (amazon_previous_product_id) REFERENCES Product(amazon_previous_product_id)
);

select * from Product;
show tables;

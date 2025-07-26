
CREATE DATABASE MotorcycleShop1;
GO

-- 
USE MotorcycleShop1;
GO

CREATE TABLE roles (
    role_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(50) NOT NULL
);


CREATE TABLE users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(50) NOT NULL,
    password NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) NOT NULL,
    phone_number NVARCHAR(15) NOT NULL,
    address NVARCHAR(200)
);


CREATE TABLE categories (
    category_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(50) NOT NULL
);


CREATE TABLE brands (
    brand_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(50) NOT NULL
);


CREATE TABLE motorcycles (
    motorcycle_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    price DECIMAL(15, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    description NVARCHAR(500),
    image_url NVARCHAR(200)
);


CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    total_amount DECIMAL(15, 2) NOT NULL,
    status NVARCHAR(50) NOT NULL
);


CREATE TABLE order_details (
    detail_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    motorcycle_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (motorcycle_id) REFERENCES motorcycles(motorcycle_id)
);


CREATE TABLE payments (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    payment_method NVARCHAR(50) NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);


CREATE TABLE accessories (
    accessory_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    price DECIMAL(15, 2) NOT NULL,
    description NVARCHAR(500),
    image_url NVARCHAR(200)
);


CREATE TABLE motorcycle_accessories (
    motorcycle_id INT NOT NULL,
    accessory_id INT NOT NULL,
    PRIMARY KEY (motorcycle_id, accessory_id),
    FOREIGN KEY (motorcycle_id) REFERENCES motorcycles(motorcycle_id),
    FOREIGN KEY (accessory_id) REFERENCES accessories(accessory_id)
);

INSERT INTO roles (name) VALUES 
('Admin'),
('User'),
('Manager'),
('Sales'),
('Support');
GO

INSERT INTO users (username, password, email, phone_number, address) VALUES 
('admin1', 'admin123', 'admin1@example.com', '0901111111', '123 Admin St'),
('user1', 'user123', 'user1@example.com', '0911111111', '456 User St'),
('manager1', 'manager123', 'manager1@example.com', '0921111111', '789 Manager St'),
('sales1', 'sales123', 'sales1@example.com', '0931111111', '159 Sales St'),
('support1', 'support123', 'support1@example.com', '0941111111', '357 Support St');
GO

INSERT INTO categories (name) VALUES 
('Cruiser'),
('Electric'),
('Sport'),
('Touring'),
('Off-road');
GO

INSERT INTO brands (name) VALUES 
('Yamaha'),
('Honda'),
('Ducati'),
('BMW'),
('Harley-Davidson');
GO

INSERT INTO motorcycles (name, price, stock_quantity, description, image_url) VALUES 
('Yamaha R15', 50000000, 10, N'Sport bike phân khối nhỏ', NULL),
('Honda CB500X', 120000000, 8, N'Adventure bike phù hợp đường dài', NULL),
('Ducati Panigale V4', 500000000, 5, N'Superbike mạnh mẽ của Ducati', NULL),
('BMW S1000RR', 700000000, 3, N'Xe mô tô thể thao mạnh nhất của BMW', NULL),
('Harley-Davidson Street 750', 250000000, 6, N'Cruiser mạnh mẽ cho đường trường', NULL);
GO

INSERT INTO orders (user_id, total_amount, status) VALUES 
(1, 50000000, 'Completed'),
(2, 120000000, 'Pending'),
(3, 500000000, 'Shipped'),
(4, 700000000, 'Completed'),
(5, 250000000, 'Cancelled');
GO

INSERT INTO order_details (order_id, motorcycle_id, quantity, price) VALUES 
(1, 1, 1, 50000000),
(2, 2, 1, 120000000),
(3, 3, 1, 500000000),
(4, 4, 1, 700000000),
(5, 5, 1, 250000000);
GO

INSERT INTO payments (order_id, payment_method, amount) VALUES 
(1, 'Cash', 50000000),
(2, 'Credit Card', 120000000),
(3, 'Bank Transfer', 500000000),
(4, 'Cash', 700000000),
(5, 'Credit Card', 250000000);
GO



SELECT * FROM roles;
SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM brands;
SELECT * FROM motorcycles;
SELECT * FROM orders;
SELECT * FROM order_details;
SELECT * FROM payments;
SELECT * FROM accessories;	
SELECT * FROM motorcycle_accessories;

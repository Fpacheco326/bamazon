DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    id INT AUTO_INCREMENT, 
    product_name VARCHAR(255),
    department_name VARCHAR(255),
    price DECIMAL(10,2),
    stock_quantity INT,
    PRIMARY KEY(id)
);

INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(1, "iPod", "Electronics", 300.00, 10);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(2, "iPhone", "Electronics", 500.00, 20);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(3, "Rolex", "Electronics", 30000.00, 15);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(4, "Beer", "Alcohol", 8.00, 30);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(5, "Jameson", "Alcohol", 30.00, 10);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(6, "Nintendo Switch", "Electronics", 300.00, 5);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(7, "Nintendo Classic", "Electronics", 70.00, 10);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(8, "Blueberry Cupcakes", "Bakery", 4.00, 50);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(9, "Paper Towels", "Kitchen Acc.", 5.00, 60);
INSERT INTO products (id, product_name, department_name, price, stock_quantity) VALUES	(10, "Comic Book", "Books", 3.00, 100);
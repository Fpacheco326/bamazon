CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    id INT AUTO_INCREMENT, 
    product_name VARCHAR(255),
    department_name VARCHAR(255),
    price VARCHAR(255),
    stock_quantity VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("iPod", "Electronics",	"$300","10"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("iPhone","Electronics",	"$500","20"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("Rolex","Electronics",	"$30000","15"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("Beer","Alcohol",	"$8","30"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("Jameson","Alcohol","$30","10"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("Nintendo Switch","Electronics",	"$300","5"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("Nintendo Classic","Electronics",	"$70","10"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("Blueberry Cupcakes","Bakery",	"$4","50"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("Paper Towels","Kitchen Acc.",	"$5","60"	);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES	("Comic Book","Books",	"$3","100"	);
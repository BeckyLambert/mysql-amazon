DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
id INT NOT NULL AUTO_INCREMENT,
product VARCHAR(100) NOT NULL,
department VARCHAR(100) NOT NULL,
price DECIMAL(10,2) NULL,
stock_quantity INT NULL,
PRIMARY KEY(id)
);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Airpods", "Electronics", 250, 300);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Marshall Acton 2", "Electronics", 350, 15);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Sectional Sofa", "Furniture", 1500, 13);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Silverware set of 5", "Household Goods", 79, 100);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Throw Pillow", "Household Goods", 20, 500);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Samsung TV 55in", "Electronics", 1000, 150);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Lifeproof Iphone 10xr Clear Case", "Mobile", 85, 45);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Gel Memory Foam Kingsize Mattress", "Furniture", 1700, 10);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Wireless Charger", "Mobile", 50, 450);

INSERT INTO products (product, department, price, stock_quantity)
VALUES ("Kegerator", "Furniture", 350, 1000);

SELECT * FROM products
DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
id INT NOT NULL AUTO_INCREMENT,
product VARCHAR(100) NOT NULL,
department VARCHAR(100) NOT NULL,
price DECIMAL(10,2) NULL,
quanity INT NULL,
PRIMARY KEY(id)
);

INSERT INTO products (product, department, price, quanity)
VALUES ("Airpods", "Electronics", 250, 300);

INSERT INTO products (product, department, price, quanity)
VALUES ("Marshall Acton 2", "Electronics", 350, 15);

INSERT INTO products (product, department, price, quanity)
VALUES ("Sectional Sofa", "Furniture", 1500, 13);

INSERT INTO products (product, department, price, quanity)
VALUES ("Silverware set of 5", "Household Goods", 79, 100);

INSERT INTO products (product, department, price, quanity)
VALUES ("Throw Pillow", "Household Goods", 20, 500);

INSERT INTO products (product, department, price, quanity)
VALUES ("Samsung TV 55in", "Electronics", 1000, 150);

INSERT INTO products (product, department, price, quanity)
VALUES ("Lifeproof Iphone 10xr Clear Case", "Mobile", 85, 45);

INSERT INTO products (product, department, price, quanity)
VALUES ("Gel Memory Foam Kingsize Mattress", "Furniture", 1700, 10);

INSERT INTO products (product, department, price, quanity)
VALUES ("Wireless Charger", "Mobile", 50, 450);

INSERT INTO products (product, department, price, quanity)
VALUES ("Kegerator", "Furniture", 350, 1000);

SELECT * FROM products
-- Create a database for an e-commerce application using CREATE DATABASE statement
CREATE DATABASE e_commerce;

-- Use the created database
USE e_commerce;

-- Create tables for the e-commerce application
CREATE TABLE brand (
brand_id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(255) NOT NULL
);

CREATE TABLE product_category (
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(255) NOT NULL
);

CREATE TABLE product (
product_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
base_price DECIMAL(10,2) NOT NULL,
brand_id INT,
category_id INT,
FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

CREATE TABLE product_image (
image_id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT,
image_url VARCHAR(500),
FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE product_item (
item_id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT,
sku VARCHAR(100) UNIQUE,
stock INT,
FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE color (
color_id INT PRIMARY KEY AUTO_INCREMENT,
color_name VARCHAR(100) NOT NULL
);

CREATE TABLE size_category (
size_category_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL
);

CREATE TABLE size_option (
size_id INT PRIMARY KEY AUTO_INCREMENT,
label VARCHAR(50) NOT NULL,
size_category_id INT,
FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

CREATE TABLE product_variation (
variation_id INT PRIMARY KEY AUTO_INCREMENT,
item_id INT,
color_id INT,
size_id INT,
FOREIGN KEY (item_id) REFERENCES product_item(item_id),
FOREIGN KEY (color_id) REFERENCES color(color_id),
FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

CREATE TABLE attribute_category (
attribute_category_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL
);

CREATE TABLE attribute_type (
attribute_type_id INT PRIMARY KEY AUTO_INCREMENT,
type_name VARCHAR(50) NOT NULL
);

CREATE TABLE product_attribute (
attribute_id INT PRIMARY KEY AUTO_INCREMENT,
product_id INT,
name VARCHAR(255) NOT NULL,
value VARCHAR(255),
attribute_category_id INT,
attribute_type_id INT,
FOREIGN KEY (product_id) REFERENCES product(product_id),
FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);


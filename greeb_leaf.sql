create database greenleaf;
use greenleaf;


create table users (
 user_id int primary key auto_increment,
 user_name varchar(50) unique not null,
 pass_word_hash varchar(225) not null,
 role enum('admin','cashier') not null
 );
 
 
 create table products (
 product_id int primary key auto_increment,
 name varchar(100) unique not null,
 category varchar(50) not null,
 unit_price decimal(20,2) not null,
 stock_qty int not null default 0,
 record_level int not null default 10,
 expiry_date date
 );
 
 create table suppliers (
 supplier_id int primary key auto_increment,
 name varchar(100) not null,
 phone varchar(20),
 email varchar(50)
 );
 
 create table sales (
 sales_id int primary key auto_increment,
 sales_date date not null,
 sales_time time not null,
 user_id int,
 total_amount decimal(10,2) not null,
 foreign key(user_id) references users(user_id)
 );
 
 create table sales_items (
 sales_item_id int primary key auto_increment,
 sales_id int not null,
 product_id int not null,
 quantity int not null,
 price decimal(10,2) not null,
 foreign key(sales_id) references sales(sales_id),
 foreign key(product_id) references products(product_id)
 );
 
 USE greenleaf;

ALTER TABLE products
ADD COLUMN barcode VARCHAR(50) UNIQUE;
 show tables;
 
 desc products;
 